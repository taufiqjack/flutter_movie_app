import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';

import '../../resources/api_repository.dart';

part 'top_rated_event.dart';
part 'top_rated_state.dart';

class TopRatedBloc extends Bloc<TopRatedEvent, TopRatedState> {
  TopRatedBloc() : super(TopRateInitial()) {
    final HomeRepository homeRepository = HomeRepository();
    on<GetTopRatedMovie>((event, emit) async {
      try {
        emit(TopRateLoading());
        final mList = await homeRepository.getTopRatedMovie();
        emit(TopRateLoaded(mList!));
      } on NetworkError {
        emit(const TopRateError(
            'Failed get data. Check the Internet connection'));
      }
    });
  }
}
