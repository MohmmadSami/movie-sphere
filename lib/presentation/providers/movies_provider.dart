import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_sphere/data/models/movie_model.dart';
import 'package:movie_sphere/data/models/user_model.dart';
import 'package:movie_sphere/services/api_service.dart';

// Movies list state
class MoviesState {
  final bool isLoading;
  final List<MovieModel> movies;
  final String? error;

  MoviesState({
    this.isLoading = false,
    this.movies = const [],
    this.error,
  });

  MoviesState copyWith({
    bool? isLoading,
    List<MovieModel>? movies,
    String? error,
  }) {
    return MoviesState(
      isLoading: isLoading ?? this.isLoading,
      movies: movies ?? this.movies,
      error: error,
    );
  }
}

// Trending movies provider
final trendingMoviesProvider =
    FutureProvider.autoDispose<List<MovieModel>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getTrendingMovies();
});

// Popular movies provider
final popularMoviesProvider =
    FutureProvider.autoDispose<List<MovieModel>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getPopularMovies();
});

// Upcoming movies provider
final upcomingMoviesProvider =
    FutureProvider.autoDispose<List<MovieModel>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getUpcomingMovies();
});

// Search movies provider
final searchMoviesProvider =
    FutureProvider.family.autoDispose<List<MovieModel>, String>(
  (ref, query) async {
    if (query.isEmpty) return [];
    final apiService = ref.watch(apiServiceProvider);
    return apiService.searchMovies(query);
  },
);

// Movie details provider
final movieDetailsProvider =
    FutureProvider.family.autoDispose<MovieDetailsModel, int>(
  (ref, movieId) async {
    final apiService = ref.watch(apiServiceProvider);
    return apiService.getMovieDetails(movieId);
  },
);

// Recommendations provider
final recommendationsProvider =
    FutureProvider.autoDispose<List<MovieModel>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getRecommendations();
});

// Search query provider
final searchQueryProvider = StateProvider<String>((ref) => '');

// Recently viewed provider
final recentlyViewedProvider =
    FutureProvider.autoDispose<List<RecentlyViewedModel>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getRecentlyViewed();
});

// Watchlist provider
class WatchlistNotifier extends StateNotifier<AsyncValue<List<WatchlistItemModel>>> {
  final ApiService apiService;

  WatchlistNotifier(this.apiService) : super(const AsyncValue.loading());

  Future<void> loadWatchlist() async {
    state = const AsyncValue.loading();
    try {
      final watchlist = await apiService.getWatchlist();
      state = AsyncValue.data(watchlist);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> addToWatchlist(int movieId) async {
    try {
      await apiService.addToWatchlist(movieId: movieId);
      await loadWatchlist();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> removeFromWatchlist(int movieId) async {
    try {
      await apiService.removeFromWatchlist(movieId: movieId);
      await loadWatchlist();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

final watchlistProvider =
    StateNotifierProvider<WatchlistNotifier, AsyncValue<List<WatchlistItemModel>>>(
      (ref) {
    final apiService = ref.watch(apiServiceProvider);
    final notifier = WatchlistNotifier(apiService);
    notifier.loadWatchlist();
    return notifier;
  },
);

// Check if in watchlist provider
final isInWatchlistProvider =
    FutureProvider.family.autoDispose<bool, int>(
  (ref, movieId) async {
    final apiService = ref.watch(apiServiceProvider);
    return apiService.isInWatchlist(movieId: movieId);
  },
);

// Add to recently viewed
final addToHistoryProvider =
    FutureProvider.family.autoDispose<void, int>(
  (ref, movieId) async {
    final apiService = ref.watch(apiServiceProvider);
    await apiService.addToHistory(movieId: movieId);
  },
);

