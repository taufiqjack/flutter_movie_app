// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailModel {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  BelongsToCollection? get belongsToCollection =>
      throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_company')
  List<ProductionCompany>? get productionCompany =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<ProductionCountries>? get productionCountry =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_language')
  List<SpokenLanguage>? get spokenLanguage =>
      throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailModelCopyWith<MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailModelCopyWith<$Res> {
  factory $MovieDetailModelCopyWith(
          MovieDetailModel value, $Res Function(MovieDetailModel) then) =
      _$MovieDetailModelCopyWithImpl<$Res, MovieDetailModel>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          BelongsToCollection? belongsToCollection,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @JsonKey(name: 'original_title')
          String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'production_company')
          List<ProductionCompany>? productionCompany,
      @JsonKey(name: 'production_countries')
          List<ProductionCountries>? productionCountry,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      int? revenue,
      int? runtime,
      @JsonKey(name: 'spoken_language')
          List<SpokenLanguage>? spokenLanguage,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      @JsonKey(name: 'vote_count')
          int? voteCount});

  $BelongsToCollectionCopyWith<$Res>? get belongsToCollection;
}

/// @nodoc
class _$MovieDetailModelCopyWithImpl<$Res, $Val extends MovieDetailModel>
    implements $MovieDetailModelCopyWith<$Res> {
  _$MovieDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompany = freezed,
    Object? productionCountry = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? spokenLanguage = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
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
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as BelongsToCollection?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      productionCompany: freezed == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>?,
      productionCountry: freezed == productionCountry
          ? _value.productionCountry
          : productionCountry // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountries>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      spokenLanguage: freezed == spokenLanguage
          ? _value.spokenLanguage
          : spokenLanguage // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguage>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $BelongsToCollectionCopyWith<$Res>? get belongsToCollection {
    if (_value.belongsToCollection == null) {
      return null;
    }

    return $BelongsToCollectionCopyWith<$Res>(_value.belongsToCollection!,
        (value) {
      return _then(_value.copyWith(belongsToCollection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailModelCopyWith<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  factory _$$_MovieDetailModelCopyWith(
          _$_MovieDetailModel value, $Res Function(_$_MovieDetailModel) then) =
      __$$_MovieDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          BelongsToCollection? belongsToCollection,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @JsonKey(name: 'original_title')
          String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'production_company')
          List<ProductionCompany>? productionCompany,
      @JsonKey(name: 'production_countries')
          List<ProductionCountries>? productionCountry,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      int? revenue,
      int? runtime,
      @JsonKey(name: 'spoken_language')
          List<SpokenLanguage>? spokenLanguage,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      @JsonKey(name: 'vote_count')
          int? voteCount});

  @override
  $BelongsToCollectionCopyWith<$Res>? get belongsToCollection;
}

/// @nodoc
class __$$_MovieDetailModelCopyWithImpl<$Res>
    extends _$MovieDetailModelCopyWithImpl<$Res, _$_MovieDetailModel>
    implements _$$_MovieDetailModelCopyWith<$Res> {
  __$$_MovieDetailModelCopyWithImpl(
      _$_MovieDetailModel _value, $Res Function(_$_MovieDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompany = freezed,
    Object? productionCountry = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? spokenLanguage = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$_MovieDetailModel(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as BelongsToCollection?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      productionCompany: freezed == productionCompany
          ? _value._productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>?,
      productionCountry: freezed == productionCountry
          ? _value._productionCountry
          : productionCountry // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountries>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      spokenLanguage: freezed == spokenLanguage
          ? _value._spokenLanguage
          : spokenLanguage // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguage>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_MovieDetailModel implements _MovieDetailModel {
  const _$_MovieDetailModel(
      {this.adult,
      @JsonKey(name: 'backdrop_path')
          this.backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          this.belongsToCollection,
      this.budget,
      final List<Genre>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id')
          this.imdbId,
      @JsonKey(name: 'original_language')
          this.originalLanguage,
      @JsonKey(name: 'original_title')
          this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path')
          this.posterPath,
      @JsonKey(name: 'production_company')
          final List<ProductionCompany>? productionCompany,
      @JsonKey(name: 'production_countries')
          final List<ProductionCountries>? productionCountry,
      @JsonKey(name: 'release_date')
          this.releaseDate,
      this.revenue,
      this.runtime,
      @JsonKey(name: 'spoken_language')
          final List<SpokenLanguage>? spokenLanguage,
      this.status,
      this.tagline,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average')
          this.voteAverage,
      @JsonKey(name: 'vote_count')
          this.voteCount})
      : _genres = genres,
        _productionCompany = productionCompany,
        _productionCountry = productionCountry,
        _spokenLanguage = spokenLanguage;

  factory _$_MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailModelFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollection? belongsToCollection;
  @override
  final int? budget;
  final List<Genre>? _genres;
  @override
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final List<ProductionCompany>? _productionCompany;
  @override
  @JsonKey(name: 'production_company')
  List<ProductionCompany>? get productionCompany {
    final value = _productionCompany;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductionCountries>? _productionCountry;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountries>? get productionCountry {
    final value = _productionCountry;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @override
  final int? revenue;
  @override
  final int? runtime;
  final List<SpokenLanguage>? _spokenLanguage;
  @override
  @JsonKey(name: 'spoken_language')
  List<SpokenLanguage>? get spokenLanguage {
    final value = _spokenLanguage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? tagline;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'MovieDetailModel(adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompany: $productionCompany, productionCountry: $productionCountry, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguage: $spokenLanguage, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailModel &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.belongsToCollection, belongsToCollection) ||
                other.belongsToCollection == belongsToCollection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
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
            const DeepCollectionEquality()
                .equals(other._productionCompany, _productionCompany) &&
            const DeepCollectionEquality()
                .equals(other._productionCountry, _productionCountry) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguage, _spokenLanguage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        const DeepCollectionEquality().hash(_productionCompany),
        const DeepCollectionEquality().hash(_productionCountry),
        releaseDate,
        revenue,
        runtime,
        const DeepCollectionEquality().hash(_spokenLanguage),
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailModelCopyWith<_$_MovieDetailModel> get copyWith =>
      __$$_MovieDetailModelCopyWithImpl<_$_MovieDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailModelToJson(
      this,
    );
  }
}

abstract class _MovieDetailModel implements MovieDetailModel {
  const factory _MovieDetailModel(
      {final bool? adult,
      @JsonKey(name: 'backdrop_path')
          final String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          final BelongsToCollection? belongsToCollection,
      final int? budget,
      final List<Genre>? genres,
      final String? homepage,
      final int? id,
      @JsonKey(name: 'imdb_id')
          final String? imdbId,
      @JsonKey(name: 'original_language')
          final String? originalLanguage,
      @JsonKey(name: 'original_title')
          final String? originalTitle,
      final String? overview,
      final double? popularity,
      @JsonKey(name: 'poster_path')
          final String? posterPath,
      @JsonKey(name: 'production_company')
          final List<ProductionCompany>? productionCompany,
      @JsonKey(name: 'production_countries')
          final List<ProductionCountries>? productionCountry,
      @JsonKey(name: 'release_date')
          final DateTime? releaseDate,
      final int? revenue,
      final int? runtime,
      @JsonKey(name: 'spoken_language')
          final List<SpokenLanguage>? spokenLanguage,
      final String? status,
      final String? tagline,
      final String? title,
      final bool? video,
      @JsonKey(name: 'vote_average')
          final double? voteAverage,
      @JsonKey(name: 'vote_count')
          final int? voteCount}) = _$_MovieDetailModel;

  factory _MovieDetailModel.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailModel.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  BelongsToCollection? get belongsToCollection;
  @override
  int? get budget;
  @override
  List<Genre>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'production_company')
  List<ProductionCompany>? get productionCompany;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountries>? get productionCountry;
  @override
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  int? get revenue;
  @override
  int? get runtime;
  @override
  @JsonKey(name: 'spoken_language')
  List<SpokenLanguage>? get spokenLanguage;
  @override
  String? get status;
  @override
  String? get tagline;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailModelCopyWith<_$_MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BelongsToCollection _$BelongsToCollectionFromJson(Map<String, dynamic> json) {
  return _BelongsToCollection.fromJson(json);
}

/// @nodoc
mixin _$BelongsToCollection {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BelongsToCollectionCopyWith<BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BelongsToCollectionCopyWith<$Res> {
  factory $BelongsToCollectionCopyWith(
          BelongsToCollection value, $Res Function(BelongsToCollection) then) =
      _$BelongsToCollectionCopyWithImpl<$Res, BelongsToCollection>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath});
}

/// @nodoc
class _$BelongsToCollectionCopyWithImpl<$Res, $Val extends BelongsToCollection>
    implements $BelongsToCollectionCopyWith<$Res> {
  _$BelongsToCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BelongsToCollectionCopyWith<$Res>
    implements $BelongsToCollectionCopyWith<$Res> {
  factory _$$_BelongsToCollectionCopyWith(_$_BelongsToCollection value,
          $Res Function(_$_BelongsToCollection) then) =
      __$$_BelongsToCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath});
}

/// @nodoc
class __$$_BelongsToCollectionCopyWithImpl<$Res>
    extends _$BelongsToCollectionCopyWithImpl<$Res, _$_BelongsToCollection>
    implements _$$_BelongsToCollectionCopyWith<$Res> {
  __$$_BelongsToCollectionCopyWithImpl(_$_BelongsToCollection _value,
      $Res Function(_$_BelongsToCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_$_BelongsToCollection(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BelongsToCollection implements _BelongsToCollection {
  const _$_BelongsToCollection(
      {this.id,
      this.name,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath});

  factory _$_BelongsToCollection.fromJson(Map<String, dynamic> json) =>
      _$$_BelongsToCollectionFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  @override
  String toString() {
    return 'BelongsToCollection(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BelongsToCollection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, posterPath, backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BelongsToCollectionCopyWith<_$_BelongsToCollection> get copyWith =>
      __$$_BelongsToCollectionCopyWithImpl<_$_BelongsToCollection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BelongsToCollectionToJson(
      this,
    );
  }
}

abstract class _BelongsToCollection implements BelongsToCollection {
  const factory _BelongsToCollection(
          {final int? id,
          final String? name,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'backdrop_path') final String? backdropPath}) =
      _$_BelongsToCollection;

  factory _BelongsToCollection.fromJson(Map<String, dynamic> json) =
      _$_BelongsToCollection.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$_BelongsToCollectionCopyWith<_$_BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$_GenreCopyWith(_$_Genre value, $Res Function(_$_Genre) then) =
      __$$_GenreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_GenreCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res, _$_Genre>
    implements _$$_GenreCopyWith<$Res> {
  __$$_GenreCopyWithImpl(_$_Genre _value, $Res Function(_$_Genre) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Genre(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genre implements _Genre {
  const _$_Genre({this.id, this.name});

  factory _$_Genre.fromJson(Map<String, dynamic> json) =>
      _$$_GenreFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Genre(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Genre &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      __$$_GenreCopyWithImpl<_$_Genre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({final int? id, final String? name}) = _$_Genre;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$_Genre.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) {
  return _ProductionCompany.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompany {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String? get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompanyCopyWith<ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyCopyWith<$Res> {
  factory $ProductionCompanyCopyWith(
          ProductionCompany value, $Res Function(ProductionCompany) then) =
      _$ProductionCompanyCopyWithImpl<$Res, ProductionCompany>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class _$ProductionCompanyCopyWithImpl<$Res, $Val extends ProductionCompany>
    implements $ProductionCompanyCopyWith<$Res> {
  _$ProductionCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductionCompanyCopyWith<$Res>
    implements $ProductionCompanyCopyWith<$Res> {
  factory _$$_ProductionCompanyCopyWith(_$_ProductionCompany value,
          $Res Function(_$_ProductionCompany) then) =
      __$$_ProductionCompanyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class __$$_ProductionCompanyCopyWithImpl<$Res>
    extends _$ProductionCompanyCopyWithImpl<$Res, _$_ProductionCompany>
    implements _$$_ProductionCompanyCopyWith<$Res> {
  __$$_ProductionCompanyCopyWithImpl(
      _$_ProductionCompany _value, $Res Function(_$_ProductionCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$_ProductionCompany(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductionCompany implements _ProductionCompany {
  const _$_ProductionCompany(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'origin_country') this.originCountry});

  factory _$_ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$$_ProductionCompanyFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  final String? name;
  @override
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompany(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductionCompany &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductionCompanyCopyWith<_$_ProductionCompany> get copyWith =>
      __$$_ProductionCompanyCopyWithImpl<_$_ProductionCompany>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductionCompanyToJson(
      this,
    );
  }
}

abstract class _ProductionCompany implements ProductionCompany {
  const factory _ProductionCompany(
          {final int? id,
          @JsonKey(name: 'logo_path') final String? logoPath,
          final String? name,
          @JsonKey(name: 'origin_country') final String? originCountry}) =
      _$_ProductionCompany;

  factory _ProductionCompany.fromJson(Map<String, dynamic> json) =
      _$_ProductionCompany.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  String? get name;
  @override
  @JsonKey(name: 'origin_country')
  String? get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$_ProductionCompanyCopyWith<_$_ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductionCountries _$ProductionCountriesFromJson(Map<String, dynamic> json) {
  return _ProductionCountries.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountries {
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCountriesCopyWith<ProductionCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountriesCopyWith<$Res> {
  factory $ProductionCountriesCopyWith(
          ProductionCountries value, $Res Function(ProductionCountries) then) =
      _$ProductionCountriesCopyWithImpl<$Res, ProductionCountries>;
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? iso31661, String? name});
}

/// @nodoc
class _$ProductionCountriesCopyWithImpl<$Res, $Val extends ProductionCountries>
    implements $ProductionCountriesCopyWith<$Res> {
  _$ProductionCountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductionCountriesCopyWith<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  factory _$$_ProductionCountriesCopyWith(_$_ProductionCountries value,
          $Res Function(_$_ProductionCountries) then) =
      __$$_ProductionCountriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? iso31661, String? name});
}

/// @nodoc
class __$$_ProductionCountriesCopyWithImpl<$Res>
    extends _$ProductionCountriesCopyWithImpl<$Res, _$_ProductionCountries>
    implements _$$_ProductionCountriesCopyWith<$Res> {
  __$$_ProductionCountriesCopyWithImpl(_$_ProductionCountries _value,
      $Res Function(_$_ProductionCountries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ProductionCountries(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductionCountries implements _ProductionCountries {
  const _$_ProductionCountries(
      {@JsonKey(name: 'iso_3166_1') this.iso31661, this.name});

  factory _$_ProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$$_ProductionCountriesFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProductionCountries(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductionCountries &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductionCountriesCopyWith<_$_ProductionCountries> get copyWith =>
      __$$_ProductionCountriesCopyWithImpl<_$_ProductionCountries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductionCountriesToJson(
      this,
    );
  }
}

abstract class _ProductionCountries implements ProductionCountries {
  const factory _ProductionCountries(
      {@JsonKey(name: 'iso_3166_1') final String? iso31661,
      final String? name}) = _$_ProductionCountries;

  factory _ProductionCountries.fromJson(Map<String, dynamic> json) =
      _$_ProductionCountries.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProductionCountriesCopyWith<_$_ProductionCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

SpokenLanguage _$SpokenLanguageFromJson(Map<String, dynamic> json) {
  return _SpokenLanguage.fromJson(json);
}

/// @nodoc
mixin _$SpokenLanguage {
  @JsonKey(name: 'english_name')
  String? get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String? get iso3691 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpokenLanguageCopyWith<SpokenLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenLanguageCopyWith<$Res> {
  factory $SpokenLanguageCopyWith(
          SpokenLanguage value, $Res Function(SpokenLanguage) then) =
      _$SpokenLanguageCopyWithImpl<$Res, SpokenLanguage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'iso_3166_1') String? iso3691,
      String? name});
}

/// @nodoc
class _$SpokenLanguageCopyWithImpl<$Res, $Val extends SpokenLanguage>
    implements $SpokenLanguageCopyWith<$Res> {
  _$SpokenLanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = freezed,
    Object? iso3691 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      iso3691: freezed == iso3691
          ? _value.iso3691
          : iso3691 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpokenLanguageCopyWith<$Res>
    implements $SpokenLanguageCopyWith<$Res> {
  factory _$$_SpokenLanguageCopyWith(
          _$_SpokenLanguage value, $Res Function(_$_SpokenLanguage) then) =
      __$$_SpokenLanguageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'iso_3166_1') String? iso3691,
      String? name});
}

/// @nodoc
class __$$_SpokenLanguageCopyWithImpl<$Res>
    extends _$SpokenLanguageCopyWithImpl<$Res, _$_SpokenLanguage>
    implements _$$_SpokenLanguageCopyWith<$Res> {
  __$$_SpokenLanguageCopyWithImpl(
      _$_SpokenLanguage _value, $Res Function(_$_SpokenLanguage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = freezed,
    Object? iso3691 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SpokenLanguage(
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      iso3691: freezed == iso3691
          ? _value.iso3691
          : iso3691 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpokenLanguage implements _SpokenLanguage {
  const _$_SpokenLanguage(
      {@JsonKey(name: 'english_name') this.englishName,
      @JsonKey(name: 'iso_3166_1') this.iso3691,
      this.name});

  factory _$_SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$$_SpokenLanguageFromJson(json);

  @override
  @JsonKey(name: 'english_name')
  final String? englishName;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso3691;
  @override
  final String? name;

  @override
  String toString() {
    return 'SpokenLanguage(englishName: $englishName, iso3691: $iso3691, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpokenLanguage &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.iso3691, iso3691) || other.iso3691 == iso3691) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, iso3691, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpokenLanguageCopyWith<_$_SpokenLanguage> get copyWith =>
      __$$_SpokenLanguageCopyWithImpl<_$_SpokenLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpokenLanguageToJson(
      this,
    );
  }
}

abstract class _SpokenLanguage implements SpokenLanguage {
  const factory _SpokenLanguage(
      {@JsonKey(name: 'english_name') final String? englishName,
      @JsonKey(name: 'iso_3166_1') final String? iso3691,
      final String? name}) = _$_SpokenLanguage;

  factory _SpokenLanguage.fromJson(Map<String, dynamic> json) =
      _$_SpokenLanguage.fromJson;

  @override
  @JsonKey(name: 'english_name')
  String? get englishName;
  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso3691;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SpokenLanguageCopyWith<_$_SpokenLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
