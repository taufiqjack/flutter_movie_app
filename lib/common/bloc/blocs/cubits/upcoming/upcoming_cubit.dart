import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';

part 'upcoming_state.dart';

class UpcomingCubit extends Cubit<UpcomingState> {
  UpcomingCubit() : super(UpcomingInitial());
  final MovieRepository _rest = MovieRepository();

  Future<void> getUpcoming() async {
    try {
      emit(UpcomingInitial());
      final upcoming = await _rest.getUpcoming();
      emit(UpcomingLoaded(upcoming: upcoming!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(UpcomingError(message: e.toString()));
    }
  }
}
