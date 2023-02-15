import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';

part 'popular_movie_state.dart';

class PopularMovieCubit extends Cubit<PopularMovieState> {
  PopularMovieCubit() : super(PopularMovieInitial());

  HomeRepository homeRepository = HomeRepository();

  Future<void> getPopularMovies() async {
    try {
      emit(PopularMovieInitial());
      final popularMovies = await homeRepository.getPopularMovie();
      emit(PopularMovieLoaded(popular: popularMovies!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(PopularMovieError(message: e.toString()));
    }
  }
}
