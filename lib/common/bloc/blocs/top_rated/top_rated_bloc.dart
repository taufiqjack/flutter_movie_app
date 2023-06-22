import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
part 'top_rated_event.dart';
part 'top_rated_state.dart';

class TopRatedBloc extends Bloc<TopRatedEvent, TopRatedState> {
  final MovieRepository _rest = MovieRepository();

  TopRatedBloc() : super(TopRateInitial()) {
    on<GetTopRatedMovie>((event, emit) async {
      try {
        emit(TopRateLoading());
        final mList = await _rest.getTopRated();
        emit(TopRateLoaded(mList!));
      } on DioError {
        emit(const TopRateError(
            'Failed get data. Check the Internet connection'));
      }
    });
  }
}
