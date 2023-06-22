import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';

part 'top_rated_state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  TopRatedCubit() : super(TopRatedInitial());
  final MovieRepository _rest = MovieRepository();

  Future<void> getTopRated() async {
    try {
      emit(TopRatedInitial());
      final topRated = await _rest.getTopRated();
      emit(TopRatedLoaded(topRated: topRated!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(TopRatedError(message: e.toString()));
    }
  }
}
