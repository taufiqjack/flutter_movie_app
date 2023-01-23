import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    final HomeRepository homeRepository = HomeRepository();
    on<GetPopularMovie>((event, emit) async {
      try {
        emit(HomeLoading());
        final mList = await homeRepository.getPopularMovie();
        emit(HomeLoaded(mList!));
      } on NetworkError {
        emit(const HomeError('Failed get data. Check the Internet connection'));
      }
    });
  }
}
