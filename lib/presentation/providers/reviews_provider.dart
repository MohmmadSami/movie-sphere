import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_sphere/data/models/review_model.dart';
import 'package:movie_sphere/services/api_service.dart';

// Movie reviews provider
final movieReviewsProvider =
    FutureProvider.family.autoDispose<ReviewListModel, int>(
  (ref, movieId) async {
    final apiService = ref.watch(apiServiceProvider);
    return apiService.getMovieReviews(movieId: movieId);
  },
);

// Add review provider
final addReviewProvider = FutureProvider.family.autoDispose<
    void,
    ({int movieId, double rating, String review})>(
  (ref, params) async {
    final apiService = ref.watch(apiServiceProvider);
    await apiService.addReview(
      movieId: params.movieId,
      rating: params.rating,
      review: params.review,
    );
    // Refresh reviews after adding
    ref.refresh(movieReviewsProvider(params.movieId));
  },
);

// Delete review provider
final deleteReviewProvider = FutureProvider.family.autoDispose<void, String>(
  (ref, reviewId) async {
    final apiService = ref.watch(apiServiceProvider);
    await apiService.deleteReview(reviewId: reviewId);
  },
);

