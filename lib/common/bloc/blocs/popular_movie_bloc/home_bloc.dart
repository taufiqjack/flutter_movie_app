import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MovieRepository _rest = MovieRepository();

  HomeBloc() : super(HomeInitial()) {
    on<GetPopularMovie>((event, emit) async {
      try {
        emit(HomeLoading());
        final mList = await _rest.getPopularMovie();
        emit(HomeLoaded(mList!));
      } on DioException {
        emit(const HomeError('Failed get data. Check the Internet connection'));
      }
    });
  }
}
