// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_model.freezed.dart';
part 'now_playing_model.g.dart';

@Freezed()
class NowPlayingModel with _$NowPlayingModel {
  const factory NowPlayingModel({
    Dates? dates,
    int? page,
    List<Results>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_result') int? totalResults,
  }) = _NowPlayingModel;

  factory NowPlayingModel.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingModelFromJson(json);
}

@Freezed()
class Dates with _$Dates {
  const factory Dates({
    String? maximum,
    String? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

@Freezed()
abstract class Results with _$Results {
  const factory Results({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    int? id,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Results;
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
