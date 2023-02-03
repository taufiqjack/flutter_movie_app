part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class GetSearchMovie extends SearchEvent {
  final String word;
  final int page;
  const GetSearchMovie(
    this.word,
    this.page,
  );
}
