// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  String get posterUrl => throw _privateConstructorUsedError;
  String get backdropUrl => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  List<GenreModel>? get genres => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
    MovieModel value,
    $Res Function(MovieModel) then,
  ) = _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call({
    int id,
    String title,
    String overview,
    @JsonKey(name: 'release_date') String releaseDate,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int voteCount,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    String posterUrl,
    String backdropUrl,
    int? runtime,
    List<GenreModel>? genres,
    String? tagline,
    String? status,
    int? budget,
    int? revenue,
    String? homepage,
    String? originalLanguage,
    double? popularity,
  });
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? posterUrl = null,
    Object? backdropUrl = null,
    Object? runtime = freezed,
    Object? genres = freezed,
    Object? tagline = freezed,
    Object? status = freezed,
    Object? budget = freezed,
    Object? revenue = freezed,
    Object? homepage = freezed,
    Object? originalLanguage = freezed,
    Object? popularity = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            overview: null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as String,
            releaseDate: null == releaseDate
                ? _value.releaseDate
                : releaseDate // ignore: cast_nullable_to_non_nullable
                      as String,
            voteAverage: null == voteAverage
                ? _value.voteAverage
                : voteAverage // ignore: cast_nullable_to_non_nullable
                      as double,
            voteCount: null == voteCount
                ? _value.voteCount
                : voteCount // ignore: cast_nullable_to_non_nullable
                      as int,
            posterPath: freezed == posterPath
                ? _value.posterPath
                : posterPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            backdropPath: freezed == backdropPath
                ? _value.backdropPath
                : backdropPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            posterUrl: null == posterUrl
                ? _value.posterUrl
                : posterUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            backdropUrl: null == backdropUrl
                ? _value.backdropUrl
                : backdropUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            runtime: freezed == runtime
                ? _value.runtime
                : runtime // ignore: cast_nullable_to_non_nullable
                      as int?,
            genres: freezed == genres
                ? _value.genres
                : genres // ignore: cast_nullable_to_non_nullable
                      as List<GenreModel>?,
            tagline: freezed == tagline
                ? _value.tagline
                : tagline // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            budget: freezed == budget
                ? _value.budget
                : budget // ignore: cast_nullable_to_non_nullable
                      as int?,
            revenue: freezed == revenue
                ? _value.revenue
                : revenue // ignore: cast_nullable_to_non_nullable
                      as int?,
            homepage: freezed == homepage
                ? _value.homepage
                : homepage // ignore: cast_nullable_to_non_nullable
                      as String?,
            originalLanguage: freezed == originalLanguage
                ? _value.originalLanguage
                : originalLanguage // ignore: cast_nullable_to_non_nullable
                      as String?,
            popularity: freezed == popularity
                ? _value.popularity
                : popularity // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
    _$MovieModelImpl value,
    $Res Function(_$MovieModelImpl) then,
  ) = __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String overview,
    @JsonKey(name: 'release_date') String releaseDate,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int voteCount,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    String posterUrl,
    String backdropUrl,
    int? runtime,
    List<GenreModel>? genres,
    String? tagline,
    String? status,
    int? budget,
    int? revenue,
    String? homepage,
    String? originalLanguage,
    double? popularity,
  });
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
    _$MovieModelImpl _value,
    $Res Function(_$MovieModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? posterUrl = null,
    Object? backdropUrl = null,
    Object? runtime = freezed,
    Object? genres = freezed,
    Object? tagline = freezed,
    Object? status = freezed,
    Object? budget = freezed,
    Object? revenue = freezed,
    Object? homepage = freezed,
    Object? originalLanguage = freezed,
    Object? popularity = freezed,
  }) {
    return _then(
      _$MovieModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        overview: null == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as String,
        releaseDate: null == releaseDate
            ? _value.releaseDate
            : releaseDate // ignore: cast_nullable_to_non_nullable
                  as String,
        voteAverage: null == voteAverage
            ? _value.voteAverage
            : voteAverage // ignore: cast_nullable_to_non_nullable
                  as double,
        voteCount: null == voteCount
            ? _value.voteCount
            : voteCount // ignore: cast_nullable_to_non_nullable
                  as int,
        posterPath: freezed == posterPath
            ? _value.posterPath
            : posterPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        backdropPath: freezed == backdropPath
            ? _value.backdropPath
            : backdropPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        posterUrl: null == posterUrl
            ? _value.posterUrl
            : posterUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        backdropUrl: null == backdropUrl
            ? _value.backdropUrl
            : backdropUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        runtime: freezed == runtime
            ? _value.runtime
            : runtime // ignore: cast_nullable_to_non_nullable
                  as int?,
        genres: freezed == genres
            ? _value._genres
            : genres // ignore: cast_nullable_to_non_nullable
                  as List<GenreModel>?,
        tagline: freezed == tagline
            ? _value.tagline
            : tagline // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        budget: freezed == budget
            ? _value.budget
            : budget // ignore: cast_nullable_to_non_nullable
                  as int?,
        revenue: freezed == revenue
            ? _value.revenue
            : revenue // ignore: cast_nullable_to_non_nullable
                  as int?,
        homepage: freezed == homepage
            ? _value.homepage
            : homepage // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalLanguage: freezed == originalLanguage
            ? _value.originalLanguage
            : originalLanguage // ignore: cast_nullable_to_non_nullable
                  as String?,
        popularity: freezed == popularity
            ? _value.popularity
            : popularity // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl({
    required this.id,
    required this.title,
    required this.overview,
    @JsonKey(name: 'release_date') required this.releaseDate,
    @JsonKey(name: 'vote_average') required this.voteAverage,
    @JsonKey(name: 'vote_count') required this.voteCount,
    @JsonKey(name: 'poster_path') this.posterPath,
    @JsonKey(name: 'backdrop_path') this.backdropPath,
    this.posterUrl = '',
    this.backdropUrl = '',
    this.runtime,
    final List<GenreModel>? genres,
    this.tagline,
    this.status,
    this.budget,
    this.revenue,
    this.homepage,
    this.originalLanguage,
    this.popularity,
  }) : _genres = genres;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey()
  final String posterUrl;
  @override
  @JsonKey()
  final String backdropUrl;
  @override
  final int? runtime;
  final List<GenreModel>? _genres;
  @override
  List<GenreModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? tagline;
  @override
  final String? status;
  @override
  final int? budget;
  @override
  final int? revenue;
  @override
  final String? homepage;
  @override
  final String? originalLanguage;
  @override
  final double? popularity;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, overview: $overview, releaseDate: $releaseDate, voteAverage: $voteAverage, voteCount: $voteCount, posterPath: $posterPath, backdropPath: $backdropPath, posterUrl: $posterUrl, backdropUrl: $backdropUrl, runtime: $runtime, genres: $genres, tagline: $tagline, status: $status, budget: $budget, revenue: $revenue, homepage: $homepage, originalLanguage: $originalLanguage, popularity: $popularity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.backdropUrl, backdropUrl) ||
                other.backdropUrl == backdropUrl) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    overview,
    releaseDate,
    voteAverage,
    voteCount,
    posterPath,
    backdropPath,
    posterUrl,
    backdropUrl,
    runtime,
    const DeepCollectionEquality().hash(_genres),
    tagline,
    status,
    budget,
    revenue,
    homepage,
    originalLanguage,
    popularity,
  ]);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel({
    required final int id,
    required final String title,
    required final String overview,
    @JsonKey(name: 'release_date') required final String releaseDate,
    @JsonKey(name: 'vote_average') required final double voteAverage,
    @JsonKey(name: 'vote_count') required final int voteCount,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    final String posterUrl,
    final String backdropUrl,
    final int? runtime,
    final List<GenreModel>? genres,
    final String? tagline,
    final String? status,
    final int? budget,
    final int? revenue,
    final String? homepage,
    final String? originalLanguage,
    final double? popularity,
  }) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  String get posterUrl;
  @override
  String get backdropUrl;
  @override
  int? get runtime;
  @override
  List<GenreModel>? get genres;
  @override
  String? get tagline;
  @override
  String? get status;
  @override
  int? get budget;
  @override
  int? get revenue;
  @override
  String? get homepage;
  @override
  String? get originalLanguage;
  @override
  double? get popularity;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

/// @nodoc
mixin _$GenreModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreModelCopyWith<GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
    GenreModel value,
    $Res Function(GenreModel) then,
  ) = _$GenreModelCopyWithImpl<$Res, GenreModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreModelCopyWithImpl<$Res, $Val extends GenreModel>
    implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GenreModelImplCopyWith<$Res>
    implements $GenreModelCopyWith<$Res> {
  factory _$$GenreModelImplCopyWith(
    _$GenreModelImpl value,
    $Res Function(_$GenreModelImpl) then,
  ) = __$$GenreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GenreModelImplCopyWithImpl<$Res>
    extends _$GenreModelCopyWithImpl<$Res, _$GenreModelImpl>
    implements _$$GenreModelImplCopyWith<$Res> {
  __$$GenreModelImplCopyWithImpl(
    _$GenreModelImpl _value,
    $Res Function(_$GenreModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$GenreModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreModelImpl implements _GenreModel {
  const _$GenreModelImpl({required this.id, required this.name});

  factory _$GenreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreModelImplCopyWith<_$GenreModelImpl> get copyWith =>
      __$$GenreModelImplCopyWithImpl<_$GenreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreModelImplToJson(this);
  }
}

abstract class _GenreModel implements GenreModel {
  const factory _GenreModel({
    required final int id,
    required final String name,
  }) = _$GenreModelImpl;

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$GenreModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreModelImplCopyWith<_$GenreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

/// @nodoc
mixin _$CastModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;

  /// Serializes this CastModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CastModelCopyWith<CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res, CastModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String? character,
    @JsonKey(name: 'profile_path') String? profilePath,
    String profileUrl,
  });
}

/// @nodoc
class _$CastModelCopyWithImpl<$Res, $Val extends CastModel>
    implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = freezed,
    Object? profilePath = freezed,
    Object? profileUrl = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            character: freezed == character
                ? _value.character
                : character // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePath: freezed == profilePath
                ? _value.profilePath
                : profilePath // ignore: cast_nullable_to_non_nullable
                      as String?,
            profileUrl: null == profileUrl
                ? _value.profileUrl
                : profileUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CastModelImplCopyWith<$Res>
    implements $CastModelCopyWith<$Res> {
  factory _$$CastModelImplCopyWith(
    _$CastModelImpl value,
    $Res Function(_$CastModelImpl) then,
  ) = __$$CastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? character,
    @JsonKey(name: 'profile_path') String? profilePath,
    String profileUrl,
  });
}

/// @nodoc
class __$$CastModelImplCopyWithImpl<$Res>
    extends _$CastModelCopyWithImpl<$Res, _$CastModelImpl>
    implements _$$CastModelImplCopyWith<$Res> {
  __$$CastModelImplCopyWithImpl(
    _$CastModelImpl _value,
    $Res Function(_$CastModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = freezed,
    Object? profilePath = freezed,
    Object? profileUrl = null,
  }) {
    return _then(
      _$CastModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        character: freezed == character
            ? _value.character
            : character // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePath: freezed == profilePath
            ? _value.profilePath
            : profilePath // ignore: cast_nullable_to_non_nullable
                  as String?,
        profileUrl: null == profileUrl
            ? _value.profileUrl
            : profileUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CastModelImpl implements _CastModel {
  const _$CastModelImpl({
    required this.id,
    required this.name,
    this.character,
    @JsonKey(name: 'profile_path') this.profilePath,
    this.profileUrl = '',
  });

  factory _$CastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? character;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey()
  final String profileUrl;

  @override
  String toString() {
    return 'CastModel(id: $id, name: $name, character: $character, profilePath: $profilePath, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, character, profilePath, profileUrl);

  /// Create a copy of CastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CastModelImplCopyWith<_$CastModelImpl> get copyWith =>
      __$$CastModelImplCopyWithImpl<_$CastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastModelImplToJson(this);
  }
}

abstract class _CastModel implements CastModel {
  const factory _CastModel({
    required final int id,
    required final String name,
    final String? character,
    @JsonKey(name: 'profile_path') final String? profilePath,
    final String profileUrl,
  }) = _$CastModelImpl;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$CastModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get character;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  String get profileUrl;

  /// Create a copy of CastModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CastModelImplCopyWith<_$CastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  String get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
    VideoModel value,
    $Res Function(VideoModel) then,
  ) = _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call({
    String id,
    String key,
    String name,
    String type,
    String site,
    String? url,
  });
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? type = null,
    Object? site = null,
    Object? url = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            site: null == site
                ? _value.site
                : site // ignore: cast_nullable_to_non_nullable
                      as String,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VideoModelImplCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$VideoModelImplCopyWith(
    _$VideoModelImpl value,
    $Res Function(_$VideoModelImpl) then,
  ) = __$$VideoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String key,
    String name,
    String type,
    String site,
    String? url,
  });
}

/// @nodoc
class __$$VideoModelImplCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$VideoModelImpl>
    implements _$$VideoModelImplCopyWith<$Res> {
  __$$VideoModelImplCopyWithImpl(
    _$VideoModelImpl _value,
    $Res Function(_$VideoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? type = null,
    Object? site = null,
    Object? url = freezed,
  }) {
    return _then(
      _$VideoModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        site: null == site
            ? _value.site
            : site // ignore: cast_nullable_to_non_nullable
                  as String,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoModelImpl implements _VideoModel {
  const _$VideoModelImpl({
    required this.id,
    required this.key,
    required this.name,
    required this.type,
    required this.site,
    this.url,
  });

  factory _$VideoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String key;
  @override
  final String name;
  @override
  final String type;
  @override
  final String site;
  @override
  final String? url;

  @override
  String toString() {
    return 'VideoModel(id: $id, key: $key, name: $name, type: $type, site: $site, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, type, site, url);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      __$$VideoModelImplCopyWithImpl<_$VideoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoModelImplToJson(this);
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel({
    required final String id,
    required final String key,
    required final String name,
    required final String type,
    required final String site,
    final String? url,
  }) = _$VideoModelImpl;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$VideoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get key;
  @override
  String get name;
  @override
  String get type;
  @override
  String get site;
  @override
  String? get url;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsModel {
  MovieModel get movie => throw _privateConstructorUsedError;
  VideoModel? get trailer => throw _privateConstructorUsedError;
  List<CastModel>? get cast => throw _privateConstructorUsedError;
  DirectorModel? get director => throw _privateConstructorUsedError;
  List<MovieModel>? get recommendations => throw _privateConstructorUsedError;
  List<MovieModel>? get similar => throw _privateConstructorUsedError;

  /// Serializes this MovieDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
    MovieDetailsModel value,
    $Res Function(MovieDetailsModel) then,
  ) = _$MovieDetailsModelCopyWithImpl<$Res, MovieDetailsModel>;
  @useResult
  $Res call({
    MovieModel movie,
    VideoModel? trailer,
    List<CastModel>? cast,
    DirectorModel? director,
    List<MovieModel>? recommendations,
    List<MovieModel>? similar,
  });

  $MovieModelCopyWith<$Res> get movie;
  $VideoModelCopyWith<$Res>? get trailer;
  $DirectorModelCopyWith<$Res>? get director;
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res, $Val extends MovieDetailsModel>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? trailer = freezed,
    Object? cast = freezed,
    Object? director = freezed,
    Object? recommendations = freezed,
    Object? similar = freezed,
  }) {
    return _then(
      _value.copyWith(
            movie: null == movie
                ? _value.movie
                : movie // ignore: cast_nullable_to_non_nullable
                      as MovieModel,
            trailer: freezed == trailer
                ? _value.trailer
                : trailer // ignore: cast_nullable_to_non_nullable
                      as VideoModel?,
            cast: freezed == cast
                ? _value.cast
                : cast // ignore: cast_nullable_to_non_nullable
                      as List<CastModel>?,
            director: freezed == director
                ? _value.director
                : director // ignore: cast_nullable_to_non_nullable
                      as DirectorModel?,
            recommendations: freezed == recommendations
                ? _value.recommendations
                : recommendations // ignore: cast_nullable_to_non_nullable
                      as List<MovieModel>?,
            similar: freezed == similar
                ? _value.similar
                : similar // ignore: cast_nullable_to_non_nullable
                      as List<MovieModel>?,
          )
          as $Val,
    );
  }

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieModelCopyWith<$Res> get movie {
    return $MovieModelCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoModelCopyWith<$Res>? get trailer {
    if (_value.trailer == null) {
      return null;
    }

    return $VideoModelCopyWith<$Res>(_value.trailer!, (value) {
      return _then(_value.copyWith(trailer: value) as $Val);
    });
  }

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectorModelCopyWith<$Res>? get director {
    if (_value.director == null) {
      return null;
    }

    return $DirectorModelCopyWith<$Res>(_value.director!, (value) {
      return _then(_value.copyWith(director: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailsModelImplCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$$MovieDetailsModelImplCopyWith(
    _$MovieDetailsModelImpl value,
    $Res Function(_$MovieDetailsModelImpl) then,
  ) = __$$MovieDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MovieModel movie,
    VideoModel? trailer,
    List<CastModel>? cast,
    DirectorModel? director,
    List<MovieModel>? recommendations,
    List<MovieModel>? similar,
  });

  @override
  $MovieModelCopyWith<$Res> get movie;
  @override
  $VideoModelCopyWith<$Res>? get trailer;
  @override
  $DirectorModelCopyWith<$Res>? get director;
}

/// @nodoc
class __$$MovieDetailsModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res, _$MovieDetailsModelImpl>
    implements _$$MovieDetailsModelImplCopyWith<$Res> {
  __$$MovieDetailsModelImplCopyWithImpl(
    _$MovieDetailsModelImpl _value,
    $Res Function(_$MovieDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? trailer = freezed,
    Object? cast = freezed,
    Object? director = freezed,
    Object? recommendations = freezed,
    Object? similar = freezed,
  }) {
    return _then(
      _$MovieDetailsModelImpl(
        movie: null == movie
            ? _value.movie
            : movie // ignore: cast_nullable_to_non_nullable
                  as MovieModel,
        trailer: freezed == trailer
            ? _value.trailer
            : trailer // ignore: cast_nullable_to_non_nullable
                  as VideoModel?,
        cast: freezed == cast
            ? _value._cast
            : cast // ignore: cast_nullable_to_non_nullable
                  as List<CastModel>?,
        director: freezed == director
            ? _value.director
            : director // ignore: cast_nullable_to_non_nullable
                  as DirectorModel?,
        recommendations: freezed == recommendations
            ? _value._recommendations
            : recommendations // ignore: cast_nullable_to_non_nullable
                  as List<MovieModel>?,
        similar: freezed == similar
            ? _value._similar
            : similar // ignore: cast_nullable_to_non_nullable
                  as List<MovieModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsModelImpl implements _MovieDetailsModel {
  const _$MovieDetailsModelImpl({
    required this.movie,
    this.trailer,
    final List<CastModel>? cast,
    this.director,
    final List<MovieModel>? recommendations,
    final List<MovieModel>? similar,
  }) : _cast = cast,
       _recommendations = recommendations,
       _similar = similar;

  factory _$MovieDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsModelImplFromJson(json);

  @override
  final MovieModel movie;
  @override
  final VideoModel? trailer;
  final List<CastModel>? _cast;
  @override
  List<CastModel>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DirectorModel? director;
  final List<MovieModel>? _recommendations;
  @override
  List<MovieModel>? get recommendations {
    final value = _recommendations;
    if (value == null) return null;
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieModel>? _similar;
  @override
  List<MovieModel>? get similar {
    final value = _similar;
    if (value == null) return null;
    if (_similar is EqualUnmodifiableListView) return _similar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDetailsModel(movie: $movie, trailer: $trailer, cast: $cast, director: $director, recommendations: $recommendations, similar: $similar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsModelImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.trailer, trailer) || other.trailer == trailer) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            (identical(other.director, director) ||
                other.director == director) &&
            const DeepCollectionEquality().equals(
              other._recommendations,
              _recommendations,
            ) &&
            const DeepCollectionEquality().equals(other._similar, _similar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    movie,
    trailer,
    const DeepCollectionEquality().hash(_cast),
    director,
    const DeepCollectionEquality().hash(_recommendations),
    const DeepCollectionEquality().hash(_similar),
  );

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      __$$MovieDetailsModelImplCopyWithImpl<_$MovieDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsModelImplToJson(this);
  }
}

abstract class _MovieDetailsModel implements MovieDetailsModel {
  const factory _MovieDetailsModel({
    required final MovieModel movie,
    final VideoModel? trailer,
    final List<CastModel>? cast,
    final DirectorModel? director,
    final List<MovieModel>? recommendations,
    final List<MovieModel>? similar,
  }) = _$MovieDetailsModelImpl;

  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsModelImpl.fromJson;

  @override
  MovieModel get movie;
  @override
  VideoModel? get trailer;
  @override
  List<CastModel>? get cast;
  @override
  DirectorModel? get director;
  @override
  List<MovieModel>? get recommendations;
  @override
  List<MovieModel>? get similar;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectorModel _$DirectorModelFromJson(Map<String, dynamic> json) {
  return _DirectorModel.fromJson(json);
}

/// @nodoc
mixin _$DirectorModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;

  /// Serializes this DirectorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectorModelCopyWith<DirectorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectorModelCopyWith<$Res> {
  factory $DirectorModelCopyWith(
    DirectorModel value,
    $Res Function(DirectorModel) then,
  ) = _$DirectorModelCopyWithImpl<$Res, DirectorModel>;
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'profile_path') String? profilePath,
  });
}

/// @nodoc
class _$DirectorModelCopyWithImpl<$Res, $Val extends DirectorModel>
    implements $DirectorModelCopyWith<$Res> {
  _$DirectorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePath = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            profilePath: freezed == profilePath
                ? _value.profilePath
                : profilePath // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DirectorModelImplCopyWith<$Res>
    implements $DirectorModelCopyWith<$Res> {
  factory _$$DirectorModelImplCopyWith(
    _$DirectorModelImpl value,
    $Res Function(_$DirectorModelImpl) then,
  ) = __$$DirectorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'profile_path') String? profilePath,
  });
}

/// @nodoc
class __$$DirectorModelImplCopyWithImpl<$Res>
    extends _$DirectorModelCopyWithImpl<$Res, _$DirectorModelImpl>
    implements _$$DirectorModelImplCopyWith<$Res> {
  __$$DirectorModelImplCopyWithImpl(
    _$DirectorModelImpl _value,
    $Res Function(_$DirectorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DirectorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePath = freezed,
  }) {
    return _then(
      _$DirectorModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        profilePath: freezed == profilePath
            ? _value.profilePath
            : profilePath // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectorModelImpl implements _DirectorModel {
  const _$DirectorModelImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'profile_path') this.profilePath,
  });

  factory _$DirectorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectorModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  @override
  String toString() {
    return 'DirectorModel(id: $id, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, profilePath);

  /// Create a copy of DirectorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectorModelImplCopyWith<_$DirectorModelImpl> get copyWith =>
      __$$DirectorModelImplCopyWithImpl<_$DirectorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectorModelImplToJson(this);
  }
}

abstract class _DirectorModel implements DirectorModel {
  const factory _DirectorModel({
    required final int id,
    required final String name,
    @JsonKey(name: 'profile_path') final String? profilePath,
  }) = _$DirectorModelImpl;

  factory _DirectorModel.fromJson(Map<String, dynamic> json) =
      _$DirectorModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;

  /// Create a copy of DirectorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectorModelImplCopyWith<_$DirectorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
