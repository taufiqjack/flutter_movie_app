import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';

part 'upcoming_state.dart';

class UpcomingCubit extends Cubit<UpcomingState> {
  UpcomingCubit() : super(UpcomingInitial());

  HomeRepository homeRepository = HomeRepository();

  Future<void> getUpcoming() async {
    try {
      emit(UpcomingInitial());
      final upcoming = await homeRepository.getUpcomingMovie();
      emit(UpcomingLoaded(upcoming: upcoming!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(UpcomingError(message: e.toString()));
    }
  }
}
