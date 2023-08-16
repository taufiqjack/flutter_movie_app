// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularMovieModel _$PopularMovieModelFromJson(Map<String, dynamic> json) {
  return _PopularMovieModel.fromJson(json);
}

/// @nodoc
mixin _$PopularMovieModel {
  int? get page => throw _privateConstructorUsedError;
  List<Results>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMovieModelCopyWith<PopularMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMovieModelCopyWith<$Res> {
  factory $PopularMovieModelCopyWith(
          PopularMovieModel value, $Res Function(PopularMovieModel) then) =
      _$PopularMovieModelCopyWithImpl<$Res, PopularMovieModel>;
  @useResult
  $Res call(
      {int? page,
      List<Results>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$PopularMovieModelCopyWithImpl<$Res, $Val extends PopularMovieModel>
    implements $PopularMovieModelCopyWith<$Res> {
  _$PopularMovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PopularMovieModelCopyWith<$Res>
    implements $PopularMovieModelCopyWith<$Res> {
  factory _$$_PopularMovieModelCopyWith(_$_PopularMovieModel value,
          $Res Function(_$_PopularMovieModel) then) =
      __$$_PopularMovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<Results>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$_PopularMovieModelCopyWithImpl<$Res>
    extends _$PopularMovieModelCopyWithImpl<$Res, _$_PopularMovieModel>
    implements _$$_PopularMovieModelCopyWith<$Res> {
  __$$_PopularMovieModelCopyWithImpl(
      _$_PopularMovieModel _value, $Res Function(_$_PopularMovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_PopularMovieModel(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PopularMovieModel implements _PopularMovieModel {
  const _$_PopularMovieModel(
      {this.page,
      final List<Results>? results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _results = results;

  factory _$_PopularMovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_PopularMovieModelFromJson(json);

  @override
  final int? page;
  final List<Results>? _results;
  @override
  List<Results>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'PopularMovieModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularMovieModel &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopularMovieModelCopyWith<_$_PopularMovieModel> get copyWith =>
      __$$_PopularMovieModelCopyWithImpl<_$_PopularMovieModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularMovieModelToJson(
      this,
    );
  }
}

abstract class _PopularMovieModel implements PopularMovieModel {
  const factory _PopularMovieModel(
          {final int? page,
          final List<Results>? results,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$_PopularMovieModel;

  factory _PopularMovieModel.fromJson(Map<String, dynamic> json) =
      _$_PopularMovieModel.fromJson;

  @override
  int? get page;
  @override
  List<Results>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_PopularMovieModelCopyWith<_$_PopularMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  @HiveField(0)
  bool? get adult => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get popularity => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(11)
  bool? get video => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {@HiveField(0)
          bool? adult,
      @HiveField(1)
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      @HiveField(2)
      @JsonKey(name: 'genre_ids')
          List<int>? genreIds,
      @HiveField(3)
          int? id,
      @HiveField(4)
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @HiveField(5)
      @JsonKey(name: 'original_title')
          String? originalTitle,
      @HiveField(6)
          String? overview,
      @HiveField(7)
          double? popularity,
      @HiveField(8)
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @HiveField(9)
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @HiveField(10)
          String? title,
      @HiveField(11)
          bool? video,
      @HiveField(12)
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      @HiveField(13)
      @JsonKey(name: 'vote_count')
          int? voteCount});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          bool? adult,
      @HiveField(1)
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      @HiveField(2)
      @JsonKey(name: 'genre_ids')
          List<int>? genreIds,
      @HiveField(3)
          int? id,
      @HiveField(4)
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @HiveField(5)
      @JsonKey(name: 'original_title')
          String? originalTitle,
      @HiveField(6)
          String? overview,
      @HiveField(7)
          double? popularity,
      @HiveField(8)
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @HiveField(9)
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @HiveField(10)
          String? title,
      @HiveField(11)
          bool? video,
      @HiveField(12)
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      @HiveField(13)
      @JsonKey(name: 'vote_count')
          int? voteCount});
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$_Results>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$_Results(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results implements _Results {
  const _$_Results(
      {@HiveField(0) this.adult,
      @HiveField(1) @JsonKey(name: 'backdrop_path') this.backdropPath,
      @HiveField(2) @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @HiveField(3) this.id,
      @HiveField(4) @JsonKey(name: 'original_language') this.originalLanguage,
      @HiveField(5) @JsonKey(name: 'original_title') this.originalTitle,
      @HiveField(6) this.overview,
      @HiveField(7) this.popularity,
      @HiveField(8) @JsonKey(name: 'poster_path') this.posterPath,
      @HiveField(9) @JsonKey(name: 'release_date') this.releaseDate,
      @HiveField(10) this.title,
      @HiveField(11) this.video,
      @HiveField(12) @JsonKey(name: 'vote_average') this.voteAverage,
      @HiveField(13) @JsonKey(name: 'vote_count') this.voteCount})
      : _genreIds = genreIds;

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  @override
  @HiveField(0)
  final bool? adult;
  @override
  @HiveField(1)
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<int>? _genreIds;
  @override
  @HiveField(2)
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  final int? id;
  @override
  @HiveField(4)
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @HiveField(5)
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  @HiveField(6)
  final String? overview;
  @override
  @HiveField(7)
  final double? popularity;
  @override
  @HiveField(8)
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @HiveField(9)
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @override
  @HiveField(10)
  final String? title;
  @override
  @HiveField(11)
  final bool? video;
  @override
  @HiveField(12)
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @HiveField(13)
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'Results(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {@HiveField(0)
          final bool? adult,
      @HiveField(1)
      @JsonKey(name: 'backdrop_path')
          final String? backdropPath,
      @HiveField(2)
      @JsonKey(name: 'genre_ids')
          final List<int>? genreIds,
      @HiveField(3)
          final int? id,
      @HiveField(4)
      @JsonKey(name: 'original_language')
          final String? originalLanguage,
      @HiveField(5)
      @JsonKey(name: 'original_title')
          final String? originalTitle,
      @HiveField(6)
          final String? overview,
      @HiveField(7)
          final double? popularity,
      @HiveField(8)
      @JsonKey(name: 'poster_path')
          final String? posterPath,
      @HiveField(9)
      @JsonKey(name: 'release_date')
          final DateTime? releaseDate,
      @HiveField(10)
          final String? title,
      @HiveField(11)
          final bool? video,
      @HiveField(12)
      @JsonKey(name: 'vote_average')
          final double? voteAverage,
      @HiveField(13)
      @JsonKey(name: 'vote_count')
          final int? voteCount}) = _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  @HiveField(0)
  bool? get adult;
  @override
  @HiveField(1)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @HiveField(2)
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds;
  @override
  @HiveField(3)
  int? get id;
  @override
  @HiveField(4)
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @HiveField(5)
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @HiveField(6)
  String? get overview;
  @override
  @HiveField(7)
  double? get popularity;
  @override
  @HiveField(8)
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @HiveField(9)
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  @HiveField(10)
  String? get title;
  @override
  @HiveField(11)
  bool? get video;
  @override
  @HiveField(12)
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @HiveField(13)
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}
