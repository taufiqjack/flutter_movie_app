import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';

part 'now_playing_event.dart';
part 'now_playing_state.dart';

class NowPlayingBloc extends Bloc<NowPlayingEvent, NowPlayingState> {
  NowPlayingBloc() : super(NowPlayingInitial()) {
    final HomeRepository homeRepository = HomeRepository();
    on<GetNowPlaying>((event, emit) async {
      try {
        emit(NowPlayingLoading());
        final mList = await homeRepository.getNowPlaying();
        emit(NowPlayingLoaded(mList!));
      } on NetworkError {
        emit(const NowPlayingError(
            'Failed get data. Check the Internet connection'));
      }
    });
  }
}
