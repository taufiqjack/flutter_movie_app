import 'package:flutter_bloc/flutter_bloc.dart';
part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(const PageState(selected: 1));

  void changePage(int nextIndex) => emit(PageState(selected: nextIndex));
}
