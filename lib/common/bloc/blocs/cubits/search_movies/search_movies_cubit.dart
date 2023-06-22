import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_movies_state.dart';
part 'search_movies_cubit.freezed.dart';

class SearchMoviesCubit extends Cubit<SearchMoviesState> {
  final MovieRepository _rest = MovieRepository();

  SearchMoviesCubit() : super(const SearchMoviesState.initial());

  Future<void> getSearch(String word, int page) async {
    try {
      emit(const SearchMoviesState.loading());
      final search = await _rest.getSearch(word, page);
      emit(SearchMoviesState.success(search!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(SearchMoviesState.error(e.toString()));
    }
  }
}
