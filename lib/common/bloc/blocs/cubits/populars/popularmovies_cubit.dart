import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popularmovies_state.dart';
part 'popularmovies_cubit.freezed.dart';

class PopularmoviesCubit extends Cubit<PopularmoviesState> {
  final MovieRepository _rest = MovieRepository();

  PopularmoviesCubit() : super(const PopularmoviesState.initial());

  Future<void> getPopularMovies() async {
    try {
      emit(const PopularmoviesState.initial());
      final popularMovies = await _rest.getPopularMovie();
      emit(PopularmoviesState.success(popularMovies!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(PopularmoviesState.error(e.toString()));
    }
  }
}
