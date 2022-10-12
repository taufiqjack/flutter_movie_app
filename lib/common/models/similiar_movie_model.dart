// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'similiar_movie_model.freezed.dart';
part 'similiar_movie_model.g.dart';

@Freezed()
@optionalTypeArgs
class SimilarMovieModel with _$SimilarMovieModel {
  const factory SimilarMovieModel({
    int? page,
    List<Result>? results,
    @JsonKey(name: 'total_pages', nullable: true) int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _SimilarMovieModel;

  factory SimilarMovieModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarMovieModelFromJson(json);
}

@Freezed()
class Result with _$Result {
  const factory Result({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    int? id,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') DateTime? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
