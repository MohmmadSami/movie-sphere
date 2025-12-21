// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  String get id => throw _privateConstructorUsedError;
  int get movieId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userAvatar => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
    ReviewModel value,
    $Res Function(ReviewModel) then,
  ) = _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call({
    String id,
    int movieId,
    String userId,
    double rating,
    String review,
    String? userName,
    String? userAvatar,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieId = null,
    Object? userId = null,
    Object? rating = null,
    Object? review = null,
    Object? userName = freezed,
    Object? userAvatar = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            movieId: null == movieId
                ? _value.movieId
                : movieId // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            review: null == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                      as String,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userAvatar: freezed == userAvatar
                ? _value.userAvatar
                : userAvatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
    _$ReviewModelImpl value,
    $Res Function(_$ReviewModelImpl) then,
  ) = __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    int movieId,
    String userId,
    double rating,
    String review,
    String? userName,
    String? userAvatar,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
    _$ReviewModelImpl _value,
    $Res Function(_$ReviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieId = null,
    Object? userId = null,
    Object? rating = null,
    Object? review = null,
    Object? userName = freezed,
    Object? userAvatar = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ReviewModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        movieId: null == movieId
            ? _value.movieId
            : movieId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        review: null == review
            ? _value.review
            : review // ignore: cast_nullable_to_non_nullable
                  as String,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userAvatar: freezed == userAvatar
            ? _value.userAvatar
            : userAvatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl implements _ReviewModel {
  const _$ReviewModelImpl({
    required this.id,
    required this.movieId,
    required this.userId,
    required this.rating,
    required this.review,
    this.userName,
    this.userAvatar,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  final String id;
  @override
  final int movieId;
  @override
  final String userId;
  @override
  final double rating;
  @override
  final String review;
  @override
  final String? userName;
  @override
  final String? userAvatar;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ReviewModel(id: $id, movieId: $movieId, userId: $userId, rating: $rating, review: $review, userName: $userName, userAvatar: $userAvatar, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAvatar, userAvatar) ||
                other.userAvatar == userAvatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    movieId,
    userId,
    rating,
    review,
    userName,
    userAvatar,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(this);
  }
}

abstract class _ReviewModel implements ReviewModel {
  const factory _ReviewModel({
    required final String id,
    required final int movieId,
    required final String userId,
    required final double rating,
    required final String review,
    final String? userName,
    final String? userAvatar,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  String get id;
  @override
  int get movieId;
  @override
  String get userId;
  @override
  double get rating;
  @override
  String get review;
  @override
  String? get userName;
  @override
  String? get userAvatar;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewResponseModel _$ReviewResponseModelFromJson(Map<String, dynamic> json) {
  return _ReviewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ReviewModel? get review => throw _privateConstructorUsedError;

  /// Serializes this ReviewResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewResponseModelCopyWith<ReviewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseModelCopyWith<$Res> {
  factory $ReviewResponseModelCopyWith(
    ReviewResponseModel value,
    $Res Function(ReviewResponseModel) then,
  ) = _$ReviewResponseModelCopyWithImpl<$Res, ReviewResponseModel>;
  @useResult
  $Res call({bool success, String message, ReviewModel? review});

  $ReviewModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$ReviewResponseModelCopyWithImpl<$Res, $Val extends ReviewResponseModel>
    implements $ReviewResponseModelCopyWith<$Res> {
  _$ReviewResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? review = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            review: freezed == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                      as ReviewModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewModelCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewModelCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewResponseModelImplCopyWith<$Res>
    implements $ReviewResponseModelCopyWith<$Res> {
  factory _$$ReviewResponseModelImplCopyWith(
    _$ReviewResponseModelImpl value,
    $Res Function(_$ReviewResponseModelImpl) then,
  ) = __$$ReviewResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, ReviewModel? review});

  @override
  $ReviewModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$$ReviewResponseModelImplCopyWithImpl<$Res>
    extends _$ReviewResponseModelCopyWithImpl<$Res, _$ReviewResponseModelImpl>
    implements _$$ReviewResponseModelImplCopyWith<$Res> {
  __$$ReviewResponseModelImplCopyWithImpl(
    _$ReviewResponseModelImpl _value,
    $Res Function(_$ReviewResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? review = freezed,
  }) {
    return _then(
      _$ReviewResponseModelImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        review: freezed == review
            ? _value.review
            : review // ignore: cast_nullable_to_non_nullable
                  as ReviewModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewResponseModelImpl implements _ReviewResponseModel {
  const _$ReviewResponseModelImpl({
    required this.success,
    required this.message,
    this.review,
  });

  factory _$ReviewResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final ReviewModel? review;

  @override
  String toString() {
    return 'ReviewResponseModel(success: $success, message: $message, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, review);

  /// Create a copy of ReviewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewResponseModelImplCopyWith<_$ReviewResponseModelImpl> get copyWith =>
      __$$ReviewResponseModelImplCopyWithImpl<_$ReviewResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewResponseModelImplToJson(this);
  }
}

abstract class _ReviewResponseModel implements ReviewResponseModel {
  const factory _ReviewResponseModel({
    required final bool success,
    required final String message,
    final ReviewModel? review,
  }) = _$ReviewResponseModelImpl;

  factory _ReviewResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReviewResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  ReviewModel? get review;

  /// Create a copy of ReviewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewResponseModelImplCopyWith<_$ReviewResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewListModel _$ReviewListModelFromJson(Map<String, dynamic> json) {
  return _ReviewListModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewListModel {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;

  /// Serializes this ReviewListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewListModelCopyWith<ReviewListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListModelCopyWith<$Res> {
  factory $ReviewListModelCopyWith(
    ReviewListModel value,
    $Res Function(ReviewListModel) then,
  ) = _$ReviewListModelCopyWithImpl<$Res, ReviewListModel>;
  @useResult
  $Res call({
    bool success,
    int count,
    int total,
    int page,
    int totalPages,
    double averageRating,
    List<ReviewModel> reviews,
  });
}

/// @nodoc
class _$ReviewListModelCopyWithImpl<$Res, $Val extends ReviewListModel>
    implements $ReviewListModelCopyWith<$Res> {
  _$ReviewListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? total = null,
    Object? page = null,
    Object? totalPages = null,
    Object? averageRating = null,
    Object? reviews = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
            averageRating: null == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviews: null == reviews
                ? _value.reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewListModelImplCopyWith<$Res>
    implements $ReviewListModelCopyWith<$Res> {
  factory _$$ReviewListModelImplCopyWith(
    _$ReviewListModelImpl value,
    $Res Function(_$ReviewListModelImpl) then,
  ) = __$$ReviewListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    int count,
    int total,
    int page,
    int totalPages,
    double averageRating,
    List<ReviewModel> reviews,
  });
}

/// @nodoc
class __$$ReviewListModelImplCopyWithImpl<$Res>
    extends _$ReviewListModelCopyWithImpl<$Res, _$ReviewListModelImpl>
    implements _$$ReviewListModelImplCopyWith<$Res> {
  __$$ReviewListModelImplCopyWithImpl(
    _$ReviewListModelImpl _value,
    $Res Function(_$ReviewListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? total = null,
    Object? page = null,
    Object? totalPages = null,
    Object? averageRating = null,
    Object? reviews = null,
  }) {
    return _then(
      _$ReviewListModelImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
        averageRating: null == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewListModelImpl implements _ReviewListModel {
  const _$ReviewListModelImpl({
    required this.success,
    required this.count,
    required this.total,
    required this.page,
    required this.totalPages,
    required this.averageRating,
    final List<ReviewModel> reviews = const [],
  }) : _reviews = reviews;

  factory _$ReviewListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewListModelImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  @override
  final int total;
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final double averageRating;
  final List<ReviewModel> _reviews;
  @override
  @JsonKey()
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ReviewListModel(success: $success, count: $count, total: $total, page: $page, totalPages: $totalPages, averageRating: $averageRating, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewListModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    count,
    total,
    page,
    totalPages,
    averageRating,
    const DeepCollectionEquality().hash(_reviews),
  );

  /// Create a copy of ReviewListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewListModelImplCopyWith<_$ReviewListModelImpl> get copyWith =>
      __$$ReviewListModelImplCopyWithImpl<_$ReviewListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewListModelImplToJson(this);
  }
}

abstract class _ReviewListModel implements ReviewListModel {
  const factory _ReviewListModel({
    required final bool success,
    required final int count,
    required final int total,
    required final int page,
    required final int totalPages,
    required final double averageRating,
    final List<ReviewModel> reviews,
  }) = _$ReviewListModelImpl;

  factory _ReviewListModel.fromJson(Map<String, dynamic> json) =
      _$ReviewListModelImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  int get total;
  @override
  int get page;
  @override
  int get totalPages;
  @override
  double get averageRating;
  @override
  List<ReviewModel> get reviews;

  /// Create a copy of ReviewListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewListModelImplCopyWith<_$ReviewListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
