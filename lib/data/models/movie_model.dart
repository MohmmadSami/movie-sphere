import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @Default('') String posterUrl,
    @Default('') String backdropUrl,
    int? runtime,
    List<GenreModel>? genres,
    String? tagline,
    String? status,
    int? budget,
    int? revenue,
    String? homepage,
    String? originalLanguage,
    double? popularity,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
class GenreModel with _$GenreModel {
  const factory GenreModel({
    required int id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

@freezed
class CastModel with _$CastModel {
  const factory CastModel({
    required int id,
    required String name,
    String? character,
    @JsonKey(name: 'profile_path') String? profilePath,
    @Default('') String profileUrl,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    required String id,
    required String key,
    required String name,
    required String type,
    required String site,
    String? url,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    required MovieModel movie,
    VideoModel? trailer,
    List<CastModel>? cast,
    DirectorModel? director,
    List<MovieModel>? recommendations,
    List<MovieModel>? similar,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);
}

@freezed
class DirectorModel with _$DirectorModel {
  const factory DirectorModel({
    required int id,
    required String name,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _DirectorModel;

  factory DirectorModel.fromJson(Map<String, dynamic> json) =>
      _$DirectorModelFromJson(json);
}

