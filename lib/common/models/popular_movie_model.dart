import 'package:freezed_annotation/freezed_annotation.dart';
part 'popular_movie_model.freezed.dart';
part 'popular_movie_model.g.dart';

@Freezed()
abstract class PopularMovieModel with _$PopularMovieModel {
  const factory PopularMovieModel({
    int? page,
    List<Results>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _PopularMovieModel;

  factory PopularMovieModel.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieModelFromJson(json);
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
    @JsonKey(name: 'release_date') DateTime? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Results;
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
