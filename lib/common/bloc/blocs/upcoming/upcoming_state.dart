part of 'upcoming_bloc.dart';

abstract class UpcomingState extends Equatable {
  const UpcomingState();

  @override
  List<Object?> get props => [];
}

class UpcomingInitial extends UpcomingState {}

class UpcomingLoading extends UpcomingState {}

class UpcomingLoaded extends UpcomingState {
  final UpcomingModel upcomingModel;
  const UpcomingLoaded(
    this.upcomingModel,
  );
}

class UpcomingError extends UpcomingState {
  final String? message;
  const UpcomingError(this.message);
}
