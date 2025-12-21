import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:movie_sphere/core/config/app_config.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/core/utils/logger.dart';
import 'package:movie_sphere/data/models/movie_model.dart';
import 'package:movie_sphere/data/models/review_model.dart';
import 'package:movie_sphere/data/models/user_model.dart';

class ApiService {
  final Dio _dio;
  final FlutterSecureStorage _secureStorage;

  ApiService(this._dio, this._secureStorage) {
    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Content-Type'] = 'application/json';

          // Add JWT token if available
          final token = await _secureStorage.read(key: 'jwt_token');
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          logDebug('Request: ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          logDebug('Response: ${response.statusCode} ${response.requestOptions.path}');
          return handler.next(response);
        },
        onError: (error, handler) {
          logError('Error: ${error.message}', error);
          return handler.next(error);
        },
      ),
    );
  }

  // ==================== AUTH ENDPOINTS ====================

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        ApiConstants.authRegister,
        data: {
          'name': name,
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 201) {
        final token = response.data['token'];
        await _secureStorage.write(key: 'jwt_token', value: token);
        return response.data;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        ApiConstants.authLogin,
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final token = response.data['token'];
        await _secureStorage.write(key: 'jwt_token', value: token);
        return response.data;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<UserModel> getProfile() async {
    try {
      final response = await _dio.get(
        ApiConstants.authProfile,
      );

      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data['user']);
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<UserModel> updateProfile({
    String? name,
    dynamic avatar,
  }) async {
    try {
      FormData formData = FormData();

      if (name != null) {
        formData.fields.add(MapEntry('name', name));
      }

      if (avatar != null) {
        formData.files.add(
          MapEntry('avatar', MultipartFile.fromBytes(avatar)),
        );
      }

      final response = await _dio.put(
        ApiConstants.authUpdate,
        data: formData,
      );

      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data['user']);
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> logout() async {
    await _secureStorage.delete(key: 'jwt_token');
  }

  // ==================== MOVIES ENDPOINTS ====================

  Future<List<MovieModel>> getTrendingMovies({String timeWindow = 'week'}) async {
    try {
      final response = await _dio.get(
        ApiConstants.moviesTrending,
        queryParameters: {'timeWindow': timeWindow},
      );

      if (response.statusCode == 200) {
        final movies = (response.data['movies'] as List)
            .map((m) => MovieModel.fromJson(m))
            .toList();
        return movies;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<MovieModel>> searchMovies(String query, {int page = 1}) async {
    try {
      final response = await _dio.get(
        ApiConstants.moviesSearch,
        queryParameters: {
          'query': query,
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        final movies = (response.data['movies'] as List)
            .map((m) => MovieModel.fromJson(m))
            .toList();
        return movies;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<MovieModel>> getPopularMovies({int page = 1}) async {
    try {
      final response = await _dio.get(
        ApiConstants.moviesPopular,
        queryParameters: {'page': page},
      );

      if (response.statusCode == 200) {
        final movies = (response.data['movies'] as List)
            .map((m) => MovieModel.fromJson(m))
            .toList();
        return movies;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<MovieModel>> getUpcomingMovies({int page = 1}) async {
    try {
      final response = await _dio.get(
        ApiConstants.moviesUpcoming,
        queryParameters: {'page': page},
      );

      if (response.statusCode == 200) {
        final movies = (response.data['movies'] as List)
            .map((m) => MovieModel.fromJson(m))
            .toList();
        return movies;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<MovieDetailsModel> getMovieDetails(int movieId) async {
    try {
      logDebug('Request: GET /movies/$movieId');
      final response = await _dio.get(
        '${ApiConstants.moviesDetails}/$movieId',
      );

      if (response.statusCode == 200) {
        logDebug('Response: ${response.statusCode} Movie loaded');
        return MovieDetailsModel.fromJson(response.data);
      }
      throw Exception(response.data['message'] ?? 'Failed to load movie details');
    } on DioException catch (e) {
      logError('Error loading movie details: ${e.message}', e);
      throw _handleDioError(e);
    } catch (e) {
      logError('Unexpected error loading movie details: $e', e);
      throw Exception('Failed to load movie details: $e');
    }
  }

  // ==================== WATCHLIST ENDPOINTS ====================

  Future<void> addToWatchlist({required int movieId}) async {
    try {
      final response = await _dio.post(
        ApiConstants.watchlistAdd,
        data: {'movieId': movieId},
      );

      if (response.statusCode != 201) {
        throw Exception(response.data['message']);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> removeFromWatchlist({required int movieId}) async {
    try {
      final response = await _dio.delete(
        '${ApiConstants.watchlistRemove}/$movieId',
      );

      if (response.statusCode != 200) {
        throw Exception(response.data['message']);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<WatchlistItemModel>> getWatchlist() async {
    try {
      logDebug('Request: GET /watchlist');
      final response = await _dio.get(
        ApiConstants.watchlistGet,
      );

      logDebug('Response: ${response.statusCode} Watchlist loaded');

      if (response.statusCode == 200) {
        try {
          final movies = (response.data['movies'] as List)
              .map((m) => WatchlistItemModel.fromJson(m as Map<String, dynamic>))
              .toList();
          logDebug('Successfully parsed ${movies.length} watchlist items');
          return movies;
        } catch (e) {
          logError('Error parsing watchlist response: $e', e);
          throw Exception('Failed to parse watchlist response: $e');
        }
      }
      throw Exception(response.data['message'] ?? 'Failed to load watchlist');
    } on DioException catch (e) {
      logError('Dio error loading watchlist: ${e.message}', e);
      throw _handleDioError(e);
    } catch (e) {
      logError('Unexpected error loading watchlist: $e', e);
      throw Exception('Failed to load watchlist: $e');
    }
  }

  Future<bool> isInWatchlist({required int movieId}) async {
    try {
      final response = await _dio.get(
        '${ApiConstants.watchlistCheck}/$movieId',
      );

      if (response.statusCode == 200) {
        return response.data['isInWatchlist'] ?? false;
      }
      return false;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // ==================== REVIEWS ENDPOINTS ====================

  Future<void> addReview({
    required int movieId,
    required double rating,
    required String review,
  }) async {
    try {
      final response = await _dio.post(
        ApiConstants.reviewsAdd,
        data: {
          'movieId': movieId,
          'rating': rating,
          'review': review,
        },
      );

      if (response.statusCode != 201) {
        throw Exception(response.data['message']);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<ReviewListModel> getMovieReviews({
    required int movieId,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await _dio.get(
        '${ApiConstants.reviewsGet}/$movieId',
        queryParameters: {
          'page': page,
          'limit': limit,
        },
      );

      if (response.statusCode == 200) {
        return ReviewListModel.fromJson(response.data);
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> deleteReview({required String reviewId}) async {
    try {
      final response = await _dio.delete(
        '${ApiConstants.reviewsDelete}/$reviewId',
      );

      if (response.statusCode != 200) {
        throw Exception(response.data['message']);
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // ==================== HISTORY ENDPOINTS ====================

  Future<void> addToHistory({required int movieId}) async {
    try {
      await _dio.post(
        ApiConstants.historyAdd,
        data: {'movieId': movieId},
      );
    } on DioException catch (e) {
      logError('Error adding to history: ${e.message}');
    }
  }

  Future<List<RecentlyViewedModel>> getRecentlyViewed({int limit = 20}) async {
    try {
      final response = await _dio.get(
        ApiConstants.historyGet,
        queryParameters: {'limit': limit},
      );

      if (response.statusCode == 200) {
        final movies = (response.data['movies'] as List)
            .map((m) => RecentlyViewedModel.fromJson(m))
            .toList();
        return movies;
      }
      return [];
    } on DioException catch (e) {
      logError('Error getting recently viewed: ${e.message}');
      return [];
    }
  }

  Future<List<MovieModel>> getRecommendations() async {
    try {
      final response = await _dio.get(
        ApiConstants.recommendations,
      );

      if (response.statusCode == 200) {
        final movies = (response.data['movies'] as List)
            .map((m) => MovieModel.fromJson(m))
            .toList();
        return movies;
      }
      throw Exception(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // ==================== UTILITY METHODS ====================

  String _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout';
      case DioExceptionType.sendTimeout:
        return 'Send timeout';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout';
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message = error.response?.data['message'] ?? 'Unknown error';
        if (statusCode == 401) {
          return 'Unauthorized';
        }
        return message;
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.unknown:
        return 'Unknown error occurred';
      case DioExceptionType.badCertificate:
        return 'Bad certificate';
      case DioExceptionType.connectionError:
        return 'Connection error';
    }
  }
}

// ==================== PROVIDERS ====================

final dioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.apiBaseUrl,
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));
  return dio;
});

final secureStorageProvider = Provider((ref) {
  return const FlutterSecureStorage();
});

final apiServiceProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  final secureStorage = ref.watch(secureStorageProvider);
  return ApiService(dio, secureStorage);
});

