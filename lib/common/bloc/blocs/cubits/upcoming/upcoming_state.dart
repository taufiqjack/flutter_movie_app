part of 'upcoming_cubit.dart';

class UpcomingState extends Equatable {
  const UpcomingState();

  @override
  List<Object?> get props => [];
}

class UpcomingInitial extends UpcomingState {}

class UpcomingLoaded extends UpcomingState {
  final UpcomingModel upcoming;
  const UpcomingLoaded({required this.upcoming});
}

class UpcomingError extends UpcomingState {
  final String? message;

  const UpcomingError({this.message});
}
