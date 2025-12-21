import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String id,
    required int movieId,
    required String userId,
    required double rating,
    required String review,
    String? userName,
    String? userAvatar,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

@freezed
class ReviewResponseModel with _$ReviewResponseModel {
  const factory ReviewResponseModel({
    required bool success,
    required String message,
    ReviewModel? review,
  }) = _ReviewResponseModel;

  factory ReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseModelFromJson(json);
}

@freezed
class ReviewListModel with _$ReviewListModel {
  const factory ReviewListModel({
    required bool success,
    required int count,
    required int total,
    required int page,
    required int totalPages,
    required double averageRating,
    @Default([]) List<ReviewModel> reviews,
  }) = _ReviewListModel;

  factory ReviewListModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewListModelFromJson(json);
}

