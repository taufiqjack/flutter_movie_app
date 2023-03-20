import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nowplaying_state.dart';
part 'nowplaying_cubit.freezed.dart';

class NowplayingCubit extends Cubit<NowplayingState> {
  HomeRepository homeRepository = HomeRepository();

  NowplayingCubit() : super(const NowplayingState.initial());

  Future<void> getNowPlaying() async {
    try {
      emit(const NowplayingState.initial());
      final nowPlaying = await homeRepository.getNowPlaying();
      emit(NowplayingState.success(nowPlaying!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(NowplayingState.error(e.toString()));
    }
  }
}
