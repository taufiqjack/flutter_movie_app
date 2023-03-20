part of 'search_movies_cubit.dart';

@freezed
class SearchMoviesState with _$SearchMoviesState {
  const factory SearchMoviesState.initial() = _Initial;
  const factory SearchMoviesState.loading() = _Loading;
  const factory SearchMoviesState.error(String message) = _Error;
  const factory SearchMoviesState.success(SearchModel search) = _Success;
}
