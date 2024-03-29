import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_movies_state.dart';
part 'detail_movies_cubit.freezed.dart';

class DetailMoviesCubit extends Cubit<DetailMoviesState> {
  final MovieRepository _rest = MovieRepository();

  DetailMoviesCubit() : super(const DetailMoviesState.initial());

  Future<void> getDetails(int id) async {
    try {
      emit(const DetailMoviesState.initial());
      final details = await _rest.getDetails(id);
      emit(DetailMoviesState.success(details!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(DetailMoviesState.error(e.toString()));
    }
  }
}
