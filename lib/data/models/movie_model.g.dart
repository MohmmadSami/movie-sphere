// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      posterUrl: json['posterUrl'] as String? ?? '',
      backdropUrl: json['backdropUrl'] as String? ?? '',
      runtime: (json['runtime'] as num?)?.toInt(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagline: json['tagline'] as String?,
      status: json['status'] as String?,
      budget: (json['budget'] as num?)?.toInt(),
      revenue: (json['revenue'] as num?)?.toInt(),
      homepage: json['homepage'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'posterUrl': instance.posterUrl,
      'backdropUrl': instance.backdropUrl,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'tagline': instance.tagline,
      'status': instance.status,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'homepage': instance.homepage,
      'originalLanguage': instance.originalLanguage,
      'popularity': instance.popularity,
    };

_$GenreModelImpl _$$GenreModelImplFromJson(Map<String, dynamic> json) =>
    _$GenreModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreModelImplToJson(_$GenreModelImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$CastModelImpl _$$CastModelImplFromJson(Map<String, dynamic> json) =>
    _$CastModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      character: json['character'] as String?,
      profilePath: json['profile_path'] as String?,
      profileUrl: json['profileUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$CastModelImplToJson(_$CastModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.profilePath,
      'profileUrl': instance.profileUrl,
    };

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      id: json['id'] as String,
      key: json['key'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      site: json['site'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'type': instance.type,
      'site': instance.site,
      'url': instance.url,
    };

_$MovieDetailsModelImpl _$$MovieDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$MovieDetailsModelImpl(
  movie: MovieModel.fromJson(json['movie'] as Map<String, dynamic>),
  trailer: json['trailer'] == null
      ? null
      : VideoModel.fromJson(json['trailer'] as Map<String, dynamic>),
  cast: (json['cast'] as List<dynamic>?)
      ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  director: json['director'] == null
      ? null
      : DirectorModel.fromJson(json['director'] as Map<String, dynamic>),
  recommendations: (json['recommendations'] as List<dynamic>?)
      ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  similar: (json['similar'] as List<dynamic>?)
      ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$MovieDetailsModelImplToJson(
  _$MovieDetailsModelImpl instance,
) => <String, dynamic>{
  'movie': instance.movie,
  'trailer': instance.trailer,
  'cast': instance.cast,
  'director': instance.director,
  'recommendations': instance.recommendations,
  'similar': instance.similar,
};

_$DirectorModelImpl _$$DirectorModelImplFromJson(Map<String, dynamic> json) =>
    _$DirectorModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$DirectorModelImplToJson(_$DirectorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_path': instance.profilePath,
    };
