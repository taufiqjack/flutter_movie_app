import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    final HomeRepository homeRepository = HomeRepository();
    on<GetSearchMovie>((event, emit) async {
      try {
        emit(SearchLoading());
        var mList = await homeRepository.getSearch(event.word, event.page);
        emit(SearchLoaded(mList!));
      } on NetworkError {
        'Failed get data, please check Internet Connection!';
      }
    });
  }
}
