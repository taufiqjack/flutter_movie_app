import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';

part 'top_rated_state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  TopRatedCubit() : super(TopRatedInitial());

  HomeRepository homeRepository = HomeRepository();

  Future<void> getTopRated() async {
    try {
      emit(TopRatedInitial());
      final topRated = await homeRepository.getTopRatedMovie();
      emit(TopRatedLoaded(topRated: topRated!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(TopRatedError(message: e.toString()));
    }
  }
}
