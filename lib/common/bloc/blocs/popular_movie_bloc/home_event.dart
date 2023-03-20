part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class ChangePageEvent extends HomeEvent {
  final int? selected;
  const ChangePageEvent({
    this.selected,
  });

  @override
  List<Object?> get props => [selected];
}

class GetPopularMovie extends HomeEvent {}
