import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import '../../../models/upcoming_model.dart';

part 'upcoming_event.dart';
part 'upcoming_state.dart';

class UpcomingBloc extends Bloc<UpcomingEvent, UpcomingState> {
  UpcomingBloc() : super(UpcomingInitial()) {
    final HomeRepository homeRepository = HomeRepository();
    on<GetUpcomingMovie>((event, emit) async {
      try {
        emit(UpcomingLoading());
        final mList = await homeRepository.getUpcomingMovie();
        emit(UpcomingLoaded(mList!));
      } on NetworkError {
        emit(const UpcomingError(
            'Failed get data. Check the Internet connection'));
      }
    });
  }
}
