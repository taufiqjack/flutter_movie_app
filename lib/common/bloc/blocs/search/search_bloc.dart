import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final MovieRepository _rest = MovieRepository();

  SearchBloc() : super(SearchInitial()) {
    on<GetSearchMovie>((event, emit) async {
      try {
        emit(SearchLoading());
        var mList = await _rest.getSearch(event.word, event.page);
        emit(SearchLoaded(mList!));
      } on DioError {
        'Failed get data, please check Internet Connection!';
      }
    });
  }
}
