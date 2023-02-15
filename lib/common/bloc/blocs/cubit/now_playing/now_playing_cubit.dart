import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';

part 'now_playing_state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  NowPlayingCubit() : super(NowPlayingInitial());

  HomeRepository homeRepository = HomeRepository();

  Future<void> getNowPlaying() async {
    try {
      emit(NowPlayingInitial());
      final nowPlaying = await homeRepository.getNowPlaying();
      emit(NowPlayingLoaded(nowPlaying: nowPlaying!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(NowPlayingError(message: e.toString()));
    }
  }
}
