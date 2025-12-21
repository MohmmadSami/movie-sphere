// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: json['id'] as String,
      movieId: (json['movieId'] as num).toInt(),
      userId: json['userId'] as String,
      rating: (json['rating'] as num).toDouble(),
      review: json['review'] as String,
      userName: json['userName'] as String?,
      userAvatar: json['userAvatar'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movieId': instance.movieId,
      'userId': instance.userId,
      'rating': instance.rating,
      'review': instance.review,
      'userName': instance.userName,
      'userAvatar': instance.userAvatar,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$ReviewResponseModelImpl _$$ReviewResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewResponseModelImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  review: json['review'] == null
      ? null
      : ReviewModel.fromJson(json['review'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ReviewResponseModelImplToJson(
  _$ReviewResponseModelImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'review': instance.review,
};

_$ReviewListModelImpl _$$ReviewListModelImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewListModelImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  averageRating: (json['averageRating'] as num).toDouble(),
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ReviewListModelImplToJson(
  _$ReviewListModelImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'total': instance.total,
  'page': instance.page,
  'totalPages': instance.totalPages,
  'averageRating': instance.averageRating,
  'reviews': instance.reviews,
};
