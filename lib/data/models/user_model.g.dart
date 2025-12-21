// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String?,
      watchlist:
          (json['watchlist'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      favoriteActors:
          (json['favoriteActors'] as List<dynamic>?)
              ?.map((e) => ActorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      favoriteDirectors:
          (json['favoriteDirectors'] as List<dynamic>?)
              ?.map((e) => DirectorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      watchlistCount: (json['watchlistCount'] as num?)?.toInt() ?? 0,
      favoriteActorsCount: (json['favoriteActorsCount'] as num?)?.toInt() ?? 0,
      favoriteDirectorsCount:
          (json['favoriteDirectorsCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'watchlist': instance.watchlist,
      'favoriteActors': instance.favoriteActors,
      'favoriteDirectors': instance.favoriteDirectors,
      'watchlistCount': instance.watchlistCount,
      'favoriteActorsCount': instance.favoriteActorsCount,
      'favoriteDirectorsCount': instance.favoriteDirectorsCount,
    };

_$ActorModelImpl _$$ActorModelImplFromJson(Map<String, dynamic> json) =>
    _$ActorModelImpl(
      actorId: (json['actorId'] as num).toInt(),
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
      profileUrl: json['profileUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$ActorModelImplToJson(_$ActorModelImpl instance) =>
    <String, dynamic>{
      'actorId': instance.actorId,
      'name': instance.name,
      'profile_path': instance.profilePath,
      'profileUrl': instance.profileUrl,
    };

_$DirectorModelImpl _$$DirectorModelImplFromJson(Map<String, dynamic> json) =>
    _$DirectorModelImpl(
      directorId: (json['directorId'] as num).toInt(),
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
      profileUrl: json['profileUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$DirectorModelImplToJson(_$DirectorModelImpl instance) =>
    <String, dynamic>{
      'directorId': instance.directorId,
      'name': instance.name,
      'profile_path': instance.profilePath,
      'profileUrl': instance.profileUrl,
    };

_$WatchlistItemModelImpl _$$WatchlistItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$WatchlistItemModelImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  overview: json['overview'] as String,
  releaseDate: json['release_date'] as String,
  voteAverage: (json['vote_average'] as num).toDouble(),
  posterUrl: json['posterUrl'] as String? ?? '',
  backdropUrl: json['backdropUrl'] as String? ?? '',
);

Map<String, dynamic> _$$WatchlistItemModelImplToJson(
  _$WatchlistItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'overview': instance.overview,
  'release_date': instance.releaseDate,
  'vote_average': instance.voteAverage,
  'posterUrl': instance.posterUrl,
  'backdropUrl': instance.backdropUrl,
};

_$RecentlyViewedModelImpl _$$RecentlyViewedModelImplFromJson(
  Map<String, dynamic> json,
) => _$RecentlyViewedModelImpl(
  movieId: (json['movieId'] as num).toInt(),
  title: json['title'] as String,
  posterPath: json['poster_path'] as String?,
  viewedAt: DateTime.parse(json['viewedAt'] as String),
);

Map<String, dynamic> _$$RecentlyViewedModelImplToJson(
  _$RecentlyViewedModelImpl instance,
) => <String, dynamic>{
  'movieId': instance.movieId,
  'title': instance.title,
  'poster_path': instance.posterPath,
  'viewedAt': instance.viewedAt.toIso8601String(),
};
