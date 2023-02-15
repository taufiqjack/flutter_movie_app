part of 'search_cubit.dart';

class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoaded extends SearchState {
  final SearchModel search;
  const SearchLoaded({required this.search});
}

class SearchError extends SearchState {
  final String? message;

  const SearchError({this.message});
}
