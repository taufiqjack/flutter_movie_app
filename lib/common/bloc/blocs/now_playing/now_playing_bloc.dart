import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';

part 'now_playing_event.dart';
part 'now_playing_state.dart';

class NowPlayingBloc extends Bloc<NowPlayingEvent, NowPlayingState> {
  final MovieRepository _rest = MovieRepository();

  NowPlayingBloc() : super(NowPlayingInitial()) {
    on<GetNowPlaying>((event, emit) async {
      try {
        emit(NowPlayingLoading());
        final mList = await _rest.getNowPlaying();
        emit(NowPlayingLoaded(mList!));
      } on DioException {
        emit(const NowPlayingError(
            'Failed get data. Check the Internet connection'));
      }
    });
  }
}
