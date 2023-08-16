part of 'popularmovies_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PopularmoviesState with _$PopularmoviesState {
  const factory PopularmoviesState.initial() = _Initial;
  const factory PopularmoviesState.loading() = _Loading;
  const factory PopularmoviesState.error(String message) = _Error;
  const factory PopularmoviesState.success(PopularMovieModel popular) =
      _Success;
}
