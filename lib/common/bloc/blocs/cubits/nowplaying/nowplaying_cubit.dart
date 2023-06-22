import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nowplaying_state.dart';
part 'nowplaying_cubit.freezed.dart';

class NowplayingCubit extends Cubit<NowplayingState> {
  final MovieRepository _rest = MovieRepository();

  NowplayingCubit() : super(const NowplayingState.initial());

  Future<void> getNowPlaying() async {
    try {
      emit(const NowplayingState.initial());
      final nowPlaying = await _rest.getNowPlaying();
      emit(NowplayingState.success(nowPlaying!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(NowplayingState.error(e.toString()));
    }
  }
}
