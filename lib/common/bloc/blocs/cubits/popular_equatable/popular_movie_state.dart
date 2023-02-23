/* part of 'popular_movie_cubit.dart';

@immutable
abstract class PopularMovieState extends Equatable {
  const PopularMovieState();

  @override
  List<Object?> get props => [];
}

class PopularMovieInitial extends PopularMovieState {}

class PopularMovieLoaded extends PopularMovieState {
  final PopularMovieModel popular;
  const PopularMovieLoaded({required this.popular});
}

class PopularMovieError extends PopularMovieState {
  final String? message;

  const PopularMovieError({this.message});
}
 */