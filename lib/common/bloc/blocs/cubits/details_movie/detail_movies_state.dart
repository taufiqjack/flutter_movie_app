part of 'detail_movies_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class DetailMoviesState with _$DetailMoviesState {
  const factory DetailMoviesState.initial() = _Initial;
  const factory DetailMoviesState.loading() = _Loading;
  const factory DetailMoviesState.error(String message) = _Error;
  const factory DetailMoviesState.success(MovieDetailModel details) = _Success;
}
