part of 'top_rated_cubit.dart';

@immutable
abstract class TopRatedState extends Equatable {
  const TopRatedState();

  @override
  List<Object?> get props => [];
}

class TopRatedInitial extends TopRatedState {}

class TopRatedLoaded extends TopRatedState {
  final TopRatedModel topRated;
  const TopRatedLoaded({required this.topRated});
}

class TopRatedError extends TopRatedState {
  final String? message;

  const TopRatedError({this.message});
}
