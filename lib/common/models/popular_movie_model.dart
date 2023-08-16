// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
@HiveType(typeId: 1, adapterName: 'MovieDataAdapter')
abstract class Results with _$Results {
  const factory Results({
    @HiveField(0) bool? adult,
    @HiveField(1) @JsonKey(name: 'backdrop_path') String? backdropPath,
    @HiveField(2) @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @HiveField(3) int? id,
    @HiveField(4) @JsonKey(name: 'original_language') String? originalLanguage,
    @HiveField(5) @JsonKey(name: 'original_title') String? originalTitle,
    @HiveField(6) String? overview,
    @HiveField(7) double? popularity,
    @HiveField(8) @JsonKey(name: 'poster_path') String? posterPath,
    @HiveField(9) @JsonKey(name: 'release_date') DateTime? releaseDate,
    @HiveField(10) String? title,
    @HiveField(11) bool? video,
    @HiveField(12) @JsonKey(name: 'vote_average') double? voteAverage,
    @HiveField(13) @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Results;
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
