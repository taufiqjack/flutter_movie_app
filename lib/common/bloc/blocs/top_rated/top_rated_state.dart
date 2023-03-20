part of 'top_rated_bloc.dart';

abstract class TopRatedState extends Equatable {
  const TopRatedState();

  @override
  List<Object?> get props => [];
}

class TopRateInitial extends TopRatedState {}

class TopRateLoading extends TopRatedState {}

class TopRateLoaded extends TopRatedState {
  final TopRatedModel topRated;
  const TopRateLoaded(
    this.topRated,
  );
}

class TopRateError extends TopRatedState {
  final String? message;
  const TopRateError(this.message);
}
