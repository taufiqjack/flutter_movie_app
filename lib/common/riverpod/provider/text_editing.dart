import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textEditingProv = StateNotifierProvider((ref) {
  return TextEditingState();
});

class TextEditingState extends StateNotifier<TextEditingController> {
  TextEditingState() : super(TextEditingController());

  TextEditingController search = TextEditingController();
  void onClear() {
    search.clear();
    state;
  }
}
