part of 'now_playing_cubit.dart';

@immutable
abstract class NowPlayingState extends Equatable {
  const NowPlayingState();

  @override
  List<Object?> get props => [];
}

class NowPlayingInitial extends NowPlayingState {}

class NowPlayingLoaded extends NowPlayingState {
  final NowPlayingModel nowPlaying;
  const NowPlayingLoaded({required this.nowPlaying});
}

class NowPlayingError extends NowPlayingState {
  final String? message;

  const NowPlayingError({this.message});
}
