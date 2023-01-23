part of 'now_playing_bloc.dart';

abstract class NowPlayingState extends Equatable {
  const NowPlayingState();

  @override
  List<Object?> get props => [];
}

class NowPlayingInitial extends NowPlayingState {}

class NowPlayingLoading extends NowPlayingState {}

class NowPlayingLoaded extends NowPlayingState {
  final NowPlayingModel nowPlayingModel;
  const NowPlayingLoaded(
    this.nowPlayingModel,
  );
}

class NowPlayingError extends NowPlayingState {
  final String? message;
  const NowPlayingError(this.message);
}
