part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int? selected;

  const HomeState({
    this.selected = 1,
  });

  @override
  List<Object?> get props => [];

  HomeState copyWith({
    int? selected,
  }) {
    return HomeState(
      selected: selected ?? this.selected,
    );
  }
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final PopularMovieModel popularMovieModel;
  const HomeLoaded(
    this.popularMovieModel,
  );
}

class HomeError extends HomeState {
  final String? message;
  const HomeError(this.message);
}
