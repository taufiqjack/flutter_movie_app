// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@Freezed()
@HiveType(typeId: 2, adapterName: 'MovieDetailDataAdapter')
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    @HiveField(0) bool? adult,
    @HiveField(1) @JsonKey(name: 'backdrop_path') String? backdropPath,
    @HiveField(2)
    @JsonKey(name: 'belongs_to_collection')
        BelongsToCollection? belongsToCollection,
    @HiveField(3) int? budget,
    @HiveField(4) List<Genre>? genres,
    @HiveField(5) String? homepage,
    @HiveField(6) int? id,
    @HiveField(7) @JsonKey(name: 'imdb_id') String? imdbId,
    @HiveField(8) @JsonKey(name: 'original_language') String? originalLanguage,
    @HiveField(9) @JsonKey(name: 'original_title') String? originalTitle,
    @HiveField(10) String? overview,
    @HiveField(11) double? popularity,
    @HiveField(12) @JsonKey(name: 'poster_path') String? posterPath,
    @HiveField(13)
    @JsonKey(name: 'production_company')
        List<ProductionCompany>? productionCompany,
    @HiveField(14)
    @JsonKey(name: 'production_countries')
        List<ProductionCountries>? productionCountry,
    @HiveField(15) @JsonKey(name: 'release_date') DateTime? releaseDate,
    @HiveField(16) int? revenue,
    @HiveField(17) int? runtime,
    @HiveField(18)
    @JsonKey(name: 'spoken_language')
        List<SpokenLanguage>? spokenLanguage,
    @HiveField(19) String? status,
    @HiveField(20) String? tagline,
    @HiveField(21) String? title,
    @HiveField(22) bool? video,
    @HiveField(23) @JsonKey(name: 'vote_average') double? voteAverage,
    @HiveField(24) @JsonKey(name: 'vote_count') int? voteCount,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}

@Freezed()
class BelongsToCollection with _$BelongsToCollection {
  const factory BelongsToCollection({
    int? id,
    String? name,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
  }) = _BelongsToCollection;
  factory BelongsToCollection.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionFromJson(json);
}

@Freezed()
class Genre with _$Genre {
  const factory Genre({
    int? id,
    String? name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@Freezed()
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    int? id,
    @JsonKey(name: 'logo_path') String? logoPath,
    String? name,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);
}

@Freezed()
class ProductionCountries with _$ProductionCountries {
  const factory ProductionCountries({
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? name,
  }) = _ProductionCountries;

  factory ProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesFromJson(json);
}

@Freezed()
class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    @JsonKey(name: 'english_name') String? englishName,
    @JsonKey(name: 'iso_3166_1') String? iso3691,
    String? name,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);
}
