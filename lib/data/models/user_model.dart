import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

// @Default is already available from freezed_annotation, no additional import needed

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    String? avatar,
    @Default([]) List<int> watchlist,
    @Default([]) List<ActorModel> favoriteActors,
    @Default([]) List<DirectorModel> favoriteDirectors,
    @Default(0) int watchlistCount,
    @Default(0) int favoriteActorsCount,
    @Default(0) int favoriteDirectorsCount,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class ActorModel with _$ActorModel {
  const factory ActorModel({
    required int actorId,
    required String name,
    @JsonKey(name: 'profile_path') String? profilePath,
    @Default('') String profileUrl,
  }) = _ActorModel;

  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);
}

@freezed
class DirectorModel with _$DirectorModel {
  const factory DirectorModel({
    required int directorId,
    required String name,
    @JsonKey(name: 'profile_path') String? profilePath,
    @Default('') String profileUrl,
  }) = _DirectorModel;

  factory DirectorModel.fromJson(Map<String, dynamic> json) =>
      _$DirectorModelFromJson(json);
}

@freezed
class WatchlistItemModel with _$WatchlistItemModel {
  const factory WatchlistItemModel({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @Default('') String posterUrl,
    @Default('') String backdropUrl,
  }) = _WatchlistItemModel;

  factory WatchlistItemModel.fromJson(Map<String, dynamic> json) =>
      _$WatchlistItemModelFromJson(json);
}

@freezed
class RecentlyViewedModel with _$RecentlyViewedModel {
  const factory RecentlyViewedModel({
    required int movieId,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    required DateTime viewedAt,
  }) = _RecentlyViewedModel;

  factory RecentlyViewedModel.fromJson(Map<String, dynamic> json) =>
      _$RecentlyViewedModelFromJson(json);
}

