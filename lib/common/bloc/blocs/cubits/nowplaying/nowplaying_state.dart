part of 'nowplaying_cubit.dart';

@freezed
class NowplayingState with _$NowplayingState {
  const factory NowplayingState.initial() = _Initial;
  const factory NowplayingState.loading() = _Loading;
  const factory NowplayingState.error(String message) = _Error;
  const factory NowplayingState.success(NowPlayingModel nowPlaying) = _Success;
}
