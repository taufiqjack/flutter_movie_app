import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import '../../../models/upcoming_model.dart';

part 'upcoming_event.dart';
part 'upcoming_state.dart';

class UpcomingBloc extends Bloc<UpcomingEvent, UpcomingState> {
  final MovieRepository _rest = MovieRepository();

  UpcomingBloc() : super(UpcomingInitial()) {
    on<GetUpcomingMovie>((event, emit) async {
      try {
        emit(UpcomingLoading());
        final mList = await _rest.getUpcoming();
        emit(UpcomingLoaded(mList!));
      } on DioError {
        emit(const UpcomingError(
            'Failed get data. Check the Internet connection'));
      }
    });
  }
}
