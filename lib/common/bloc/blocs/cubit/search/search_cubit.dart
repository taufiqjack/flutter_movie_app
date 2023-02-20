import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  HomeRepository homeRepository = HomeRepository();
  SearchCubit() : super(SearchInitial());

  Future<void> getSearch(String word, int page) async {
    try {
      emit(SearchLoading());
      final search = await homeRepository.getSearch(word, page);
      emit(SearchLoaded(search: search!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(SearchError(message: e.toString()));
    }
  }
}
