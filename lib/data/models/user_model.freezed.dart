// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  List<int> get watchlist => throw _privateConstructorUsedError;
  List<ActorModel> get favoriteActors => throw _privateConstructorUsedError;
  List<DirectorModel> get favoriteDirectors =>
      throw _privateConstructorUsedError;
  int get watchlistCount => throw _privateConstructorUsedError;
  int get favoriteActorsCount => throw _privateConstructorUsedError;
  int get favoriteDirectorsCount => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String email,
    String? avatar,
    List<int> watchlist,
    List<ActorModel> favoriteActors,
    List<DirectorModel> favoriteDirectors,
    int watchlistCount,
    int favoriteActorsCount,
    int favoriteDirectorsCount,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = freezed,
    Object? watchlist = null,
    Object? favoriteActors = null,
    Object? favoriteDirectors = null,
    Object? watchlistCount = null,
    Object? favoriteActorsCount = null,
    Object? favoriteDirectorsCount = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            watchlist: null == watchlist
                ? _value.watchlist
                : watchlist // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            favoriteActors: null == favoriteActors
                ? _value.favoriteActors
                : favoriteActors // ignore: cast_nullable_to_non_nullable
                      as List<ActorModel>,
            favoriteDirectors: null == favoriteDirectors
                ? _value.favoriteDirectors
                : favoriteDirectors // ignore: cast_nullable_to_non_nullable
                      as List<DirectorModel>,
            watchlistCount: null == watchlistCount
                ? _value.watchlistCount
                : watchlistCount // ignore: cast_nullable_to_non_nullable
                      as int,
            favoriteActorsCount: null == favoriteActorsCount
                ? _value.favoriteActorsCount
                : favoriteActorsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            favoriteDirectorsCount: null == favoriteDirectorsCount
                ? _value.favoriteDirectorsCount
                : favoriteDirectorsCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String email,
    String? avatar,
    List<int> watchlist,
    List<ActorModel> favoriteActors,
    List<DirectorModel> favoriteDirectors,
    int watchlistCount,
    int favoriteActorsCount,
    int favoriteDirectorsCount,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = freezed,
    Object? watchlist = null,
    Object? favoriteActors = null,
    Object? favoriteDirectors = null,
    Object? watchlistCount = null,
    Object? favoriteActorsCount = null,
    Object? favoriteDirectorsCount = null,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        watchlist: null == watchlist
            ? _value._watchlist
            : watchlist // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        favoriteActors: null == favoriteActors
            ? _value._favoriteActors
            : favoriteActors // ignore: cast_nullable_to_non_nullable
                  as List<ActorModel>,
        favoriteDirectors: null == favoriteDirectors
            ? _value._favoriteDirectors
            : favoriteDirectors // ignore: cast_nullable_to_non_nullable
                  as List<DirectorModel>,
        watchlistCount: null == watchlistCount
            ? _value.watchlistCount
            : watchlistCount // ignore: cast_nullable_to_non_nullable
                  as int,
        favoriteActorsCount: null == favoriteActorsCount
            ? _value.favoriteActorsCount
            : favoriteActorsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        favoriteDirectorsCount: null == favoriteDirectorsCount
            ? _value.favoriteDirectorsCount
            : favoriteDirectorsCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.id,
    required this.name,
    required this.email,
    this.avatar,
    final List<int> watchlist = const [],
    final List<ActorModel> favoriteActors = const [],
    final List<DirectorModel> favoriteDirectors = const [],
    this.watchlistCount = 0,
    this.favoriteActorsCount = 0,
    this.favoriteDirectorsCount = 0,
  }) : _watchlist = watchlist,
       _favoriteActors = favoriteActors,
       _favoriteDirectors = favoriteDirectors;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? avatar;
  final List<int> _watchlist;
  @override
  @JsonKey()
  List<int> get watchlist {
    if (_watchlist is EqualUnmodifiableListView) return _watchlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlist);
  }

  final List<ActorModel> _favoriteActors;
  @override
  @JsonKey()
  List<ActorModel> get favoriteActors {
    if (_favoriteActors is EqualUnmodifiableListView) return _favoriteActors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteActors);
  }

  final List<DirectorModel> _favoriteDirectors;
  @override
  @JsonKey()
  List<DirectorModel> get favoriteDirectors {
    if (_favoriteDirectors is EqualUnmodifiableListView)
      return _favoriteDirectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteDirectors);
  }

  @override
  @JsonKey()
  final int watchlistCount;
  @override
  @JsonKey()
  final int favoriteActorsCount;
  @override
  @JsonKey()
  final int favoriteDirectorsCount;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, avatar: $avatar, watchlist: $watchlist, favoriteActors: $favoriteActors, favoriteDirectors: $favoriteDirectors, watchlistCount: $watchlistCount, favoriteActorsCount: $favoriteActorsCount, favoriteDirectorsCount: $favoriteDirectorsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(
              other._watchlist,
              _watchlist,
            ) &&
            const DeepCollectionEquality().equals(
              other._favoriteActors,
              _favoriteActors,
            ) &&
            const DeepCollectionEquality().equals(
              other._favoriteDirectors,
              _favoriteDirectors,
            ) &&
            (identical(other.watchlistCount, watchlistCount) ||
                other.watchlistCount == watchlistCount) &&
            (identical(other.favoriteActorsCount, favoriteActorsCount) ||
                other.favoriteActorsCount == favoriteActorsCount) &&
            (identical(other.favoriteDirectorsCount, favoriteDirectorsCount) ||
                other.favoriteDirectorsCount == favoriteDirectorsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    avatar,
    const DeepCollectionEquality().hash(_watchlist),
    const DeepCollectionEquality().hash(_favoriteActors),
    const DeepCollectionEquality().hash(_favoriteDirectors),
    watchlistCount,
    favoriteActorsCount,
    favoriteDirectorsCount,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final String id,
    required final String name,
    required final String email,
    final String? avatar,
    final List<int> watchlist,
    final List<ActorModel> favoriteActors,
    final List<DirectorModel> favoriteDirectors,
    final int watchlistCount,
    final int favoriteActorsCount,
    final int favoriteDirectorsCount,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String? get avatar;
  @override
  List<int> get watchlist;
  @override
  List<ActorModel> get favoriteActors;
  @override
  List<DirectorModel> get favoriteDirectors;
  @override
  int get watchlistCount;
  @override
  int get favoriteActorsCount;
  @override
  int get favoriteDirectorsCount;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return _ActorModel.fromJson(json);
}

/// @nodoc
mixin _$ActorModel {
  int get actorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;

  /// Serializes this ActorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActorModelCopyWith<ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorModelCopyWith<$Res> {
  factory $ActorModelCopyWith(
    ActorModel value,
    $Res Function(ActorModel) then,
  ) = _$ActorModelCopyWithImpl<$Res, ActorModel>;
  @useResult
  $Res call({
    int actorId,
    String name,
    @JsonKey(name: 'profile_path') String? profilePath,
    String profileUrl,
  });
}

/// @nodoc
class _$ActorModelCopyWithImpl<$Res, $Val extends ActorModel>
    implements $ActorModelCopyWith<$Res> {
  _$ActorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actorId = null,
    Object? name = null,
    Object? profilePath = freezed,
    Object? profileUrl = null,
  }) {
    return _then(
      _value.copyWith(
            actorId: null == actorId
                ? _value.actorId
                : actorId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$ActorModelImplCopyWith<$Res>
    implements $ActorModelCopyWith<$Res> {
  factory _$$ActorModelImplCopyWith(
    _$ActorModelImpl value,
    $Res Function(_$ActorModelImpl) then,
  ) = __$$ActorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int actorId,
    String name,
    @JsonKey(name: 'profile_path') String? profilePath,
    String profileUrl,
  });
}

/// @nodoc
class __$$ActorModelImplCopyWithImpl<$Res>
    extends _$ActorModelCopyWithImpl<$Res, _$ActorModelImpl>
    implements _$$ActorModelImplCopyWith<$Res> {
  __$$ActorModelImplCopyWithImpl(
    _$ActorModelImpl _value,
    $Res Function(_$ActorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actorId = null,
    Object? name = null,
    Object? profilePath = freezed,
    Object? profileUrl = null,
  }) {
    return _then(
      _$ActorModelImpl(
        actorId: null == actorId
            ? _value.actorId
            : actorId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$ActorModelImpl implements _ActorModel {
  const _$ActorModelImpl({
    required this.actorId,
    required this.name,
    @JsonKey(name: 'profile_path') this.profilePath,
    this.profileUrl = '',
  });

  factory _$ActorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorModelImplFromJson(json);

  @override
  final int actorId;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey()
  final String profileUrl;

  @override
  String toString() {
    return 'ActorModel(actorId: $actorId, name: $name, profilePath: $profilePath, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorModelImpl &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actorId, name, profilePath, profileUrl);

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorModelImplCopyWith<_$ActorModelImpl> get copyWith =>
      __$$ActorModelImplCopyWithImpl<_$ActorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorModelImplToJson(this);
  }
}

abstract class _ActorModel implements ActorModel {
  const factory _ActorModel({
    required final int actorId,
    required final String name,
    @JsonKey(name: 'profile_path') final String? profilePath,
    final String profileUrl,
  }) = _$ActorModelImpl;

  factory _ActorModel.fromJson(Map<String, dynamic> json) =
      _$ActorModelImpl.fromJson;

  @override
  int get actorId;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  String get profileUrl;

  /// Create a copy of ActorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActorModelImplCopyWith<_$ActorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectorModel _$DirectorModelFromJson(Map<String, dynamic> json) {
  return _DirectorModel.fromJson(json);
}

/// @nodoc
mixin _$DirectorModel {
  int get directorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;

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
    int directorId,
    String name,
    @JsonKey(name: 'profile_path') String? profilePath,
    String profileUrl,
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
    Object? directorId = null,
    Object? name = null,
    Object? profilePath = freezed,
    Object? profileUrl = null,
  }) {
    return _then(
      _value.copyWith(
            directorId: null == directorId
                ? _value.directorId
                : directorId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$DirectorModelImplCopyWith<$Res>
    implements $DirectorModelCopyWith<$Res> {
  factory _$$DirectorModelImplCopyWith(
    _$DirectorModelImpl value,
    $Res Function(_$DirectorModelImpl) then,
  ) = __$$DirectorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int directorId,
    String name,
    @JsonKey(name: 'profile_path') String? profilePath,
    String profileUrl,
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
    Object? directorId = null,
    Object? name = null,
    Object? profilePath = freezed,
    Object? profileUrl = null,
  }) {
    return _then(
      _$DirectorModelImpl(
        directorId: null == directorId
            ? _value.directorId
            : directorId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$DirectorModelImpl implements _DirectorModel {
  const _$DirectorModelImpl({
    required this.directorId,
    required this.name,
    @JsonKey(name: 'profile_path') this.profilePath,
    this.profileUrl = '',
  });

  factory _$DirectorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectorModelImplFromJson(json);

  @override
  final int directorId;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey()
  final String profileUrl;

  @override
  String toString() {
    return 'DirectorModel(directorId: $directorId, name: $name, profilePath: $profilePath, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectorModelImpl &&
            (identical(other.directorId, directorId) ||
                other.directorId == directorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, directorId, name, profilePath, profileUrl);

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
    required final int directorId,
    required final String name,
    @JsonKey(name: 'profile_path') final String? profilePath,
    final String profileUrl,
  }) = _$DirectorModelImpl;

  factory _DirectorModel.fromJson(Map<String, dynamic> json) =
      _$DirectorModelImpl.fromJson;

  @override
  int get directorId;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  String get profileUrl;

  /// Create a copy of DirectorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectorModelImplCopyWith<_$DirectorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WatchlistItemModel _$WatchlistItemModelFromJson(Map<String, dynamic> json) {
  return _WatchlistItemModel.fromJson(json);
}

/// @nodoc
mixin _$WatchlistItemModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  String get posterUrl => throw _privateConstructorUsedError;
  String get backdropUrl => throw _privateConstructorUsedError;

  /// Serializes this WatchlistItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WatchlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatchlistItemModelCopyWith<WatchlistItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistItemModelCopyWith<$Res> {
  factory $WatchlistItemModelCopyWith(
    WatchlistItemModel value,
    $Res Function(WatchlistItemModel) then,
  ) = _$WatchlistItemModelCopyWithImpl<$Res, WatchlistItemModel>;
  @useResult
  $Res call({
    int id,
    String title,
    String overview,
    @JsonKey(name: 'release_date') String releaseDate,
    @JsonKey(name: 'vote_average') double voteAverage,
    String posterUrl,
    String backdropUrl,
  });
}

/// @nodoc
class _$WatchlistItemModelCopyWithImpl<$Res, $Val extends WatchlistItemModel>
    implements $WatchlistItemModelCopyWith<$Res> {
  _$WatchlistItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? posterUrl = null,
    Object? backdropUrl = null,
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
            posterUrl: null == posterUrl
                ? _value.posterUrl
                : posterUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            backdropUrl: null == backdropUrl
                ? _value.backdropUrl
                : backdropUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WatchlistItemModelImplCopyWith<$Res>
    implements $WatchlistItemModelCopyWith<$Res> {
  factory _$$WatchlistItemModelImplCopyWith(
    _$WatchlistItemModelImpl value,
    $Res Function(_$WatchlistItemModelImpl) then,
  ) = __$$WatchlistItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String overview,
    @JsonKey(name: 'release_date') String releaseDate,
    @JsonKey(name: 'vote_average') double voteAverage,
    String posterUrl,
    String backdropUrl,
  });
}

/// @nodoc
class __$$WatchlistItemModelImplCopyWithImpl<$Res>
    extends _$WatchlistItemModelCopyWithImpl<$Res, _$WatchlistItemModelImpl>
    implements _$$WatchlistItemModelImplCopyWith<$Res> {
  __$$WatchlistItemModelImplCopyWithImpl(
    _$WatchlistItemModelImpl _value,
    $Res Function(_$WatchlistItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? posterUrl = null,
    Object? backdropUrl = null,
  }) {
    return _then(
      _$WatchlistItemModelImpl(
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
        posterUrl: null == posterUrl
            ? _value.posterUrl
            : posterUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        backdropUrl: null == backdropUrl
            ? _value.backdropUrl
            : backdropUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WatchlistItemModelImpl implements _WatchlistItemModel {
  const _$WatchlistItemModelImpl({
    required this.id,
    required this.title,
    required this.overview,
    @JsonKey(name: 'release_date') required this.releaseDate,
    @JsonKey(name: 'vote_average') required this.voteAverage,
    this.posterUrl = '',
    this.backdropUrl = '',
  });

  factory _$WatchlistItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WatchlistItemModelImplFromJson(json);

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
  @JsonKey()
  final String posterUrl;
  @override
  @JsonKey()
  final String backdropUrl;

  @override
  String toString() {
    return 'WatchlistItemModel(id: $id, title: $title, overview: $overview, releaseDate: $releaseDate, voteAverage: $voteAverage, posterUrl: $posterUrl, backdropUrl: $backdropUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.backdropUrl, backdropUrl) ||
                other.backdropUrl == backdropUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    overview,
    releaseDate,
    voteAverage,
    posterUrl,
    backdropUrl,
  );

  /// Create a copy of WatchlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchlistItemModelImplCopyWith<_$WatchlistItemModelImpl> get copyWith =>
      __$$WatchlistItemModelImplCopyWithImpl<_$WatchlistItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WatchlistItemModelImplToJson(this);
  }
}

abstract class _WatchlistItemModel implements WatchlistItemModel {
  const factory _WatchlistItemModel({
    required final int id,
    required final String title,
    required final String overview,
    @JsonKey(name: 'release_date') required final String releaseDate,
    @JsonKey(name: 'vote_average') required final double voteAverage,
    final String posterUrl,
    final String backdropUrl,
  }) = _$WatchlistItemModelImpl;

  factory _WatchlistItemModel.fromJson(Map<String, dynamic> json) =
      _$WatchlistItemModelImpl.fromJson;

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
  String get posterUrl;
  @override
  String get backdropUrl;

  /// Create a copy of WatchlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchlistItemModelImplCopyWith<_$WatchlistItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentlyViewedModel _$RecentlyViewedModelFromJson(Map<String, dynamic> json) {
  return _RecentlyViewedModel.fromJson(json);
}

/// @nodoc
mixin _$RecentlyViewedModel {
  int get movieId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  DateTime get viewedAt => throw _privateConstructorUsedError;

  /// Serializes this RecentlyViewedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentlyViewedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentlyViewedModelCopyWith<RecentlyViewedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyViewedModelCopyWith<$Res> {
  factory $RecentlyViewedModelCopyWith(
    RecentlyViewedModel value,
    $Res Function(RecentlyViewedModel) then,
  ) = _$RecentlyViewedModelCopyWithImpl<$Res, RecentlyViewedModel>;
  @useResult
  $Res call({
    int movieId,
    String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    DateTime viewedAt,
  });
}

/// @nodoc
class _$RecentlyViewedModelCopyWithImpl<$Res, $Val extends RecentlyViewedModel>
    implements $RecentlyViewedModelCopyWith<$Res> {
  _$RecentlyViewedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentlyViewedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? viewedAt = null,
  }) {
    return _then(
      _value.copyWith(
            movieId: null == movieId
                ? _value.movieId
                : movieId // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            posterPath: freezed == posterPath
                ? _value.posterPath
                : posterPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            viewedAt: null == viewedAt
                ? _value.viewedAt
                : viewedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecentlyViewedModelImplCopyWith<$Res>
    implements $RecentlyViewedModelCopyWith<$Res> {
  factory _$$RecentlyViewedModelImplCopyWith(
    _$RecentlyViewedModelImpl value,
    $Res Function(_$RecentlyViewedModelImpl) then,
  ) = __$$RecentlyViewedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int movieId,
    String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    DateTime viewedAt,
  });
}

/// @nodoc
class __$$RecentlyViewedModelImplCopyWithImpl<$Res>
    extends _$RecentlyViewedModelCopyWithImpl<$Res, _$RecentlyViewedModelImpl>
    implements _$$RecentlyViewedModelImplCopyWith<$Res> {
  __$$RecentlyViewedModelImplCopyWithImpl(
    _$RecentlyViewedModelImpl _value,
    $Res Function(_$RecentlyViewedModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecentlyViewedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? viewedAt = null,
  }) {
    return _then(
      _$RecentlyViewedModelImpl(
        movieId: null == movieId
            ? _value.movieId
            : movieId // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        posterPath: freezed == posterPath
            ? _value.posterPath
            : posterPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        viewedAt: null == viewedAt
            ? _value.viewedAt
            : viewedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentlyViewedModelImpl implements _RecentlyViewedModel {
  const _$RecentlyViewedModelImpl({
    required this.movieId,
    required this.title,
    @JsonKey(name: 'poster_path') this.posterPath,
    required this.viewedAt,
  });

  factory _$RecentlyViewedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentlyViewedModelImplFromJson(json);

  @override
  final int movieId;
  @override
  final String title;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  final DateTime viewedAt;

  @override
  String toString() {
    return 'RecentlyViewedModel(movieId: $movieId, title: $title, posterPath: $posterPath, viewedAt: $viewedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentlyViewedModelImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.viewedAt, viewedAt) ||
                other.viewedAt == viewedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, movieId, title, posterPath, viewedAt);

  /// Create a copy of RecentlyViewedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentlyViewedModelImplCopyWith<_$RecentlyViewedModelImpl> get copyWith =>
      __$$RecentlyViewedModelImplCopyWithImpl<_$RecentlyViewedModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentlyViewedModelImplToJson(this);
  }
}

abstract class _RecentlyViewedModel implements RecentlyViewedModel {
  const factory _RecentlyViewedModel({
    required final int movieId,
    required final String title,
    @JsonKey(name: 'poster_path') final String? posterPath,
    required final DateTime viewedAt,
  }) = _$RecentlyViewedModelImpl;

  factory _RecentlyViewedModel.fromJson(Map<String, dynamic> json) =
      _$RecentlyViewedModelImpl.fromJson;

  @override
  int get movieId;
  @override
  String get title;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  DateTime get viewedAt;

  /// Create a copy of RecentlyViewedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentlyViewedModelImplCopyWith<_$RecentlyViewedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
