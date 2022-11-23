import 'package:flutter_riverpod/flutter_riverpod.dart';

final isText = StateNotifierProvider((ref) {
  return Txt();
});

class Txt extends StateNotifier<String> {
  Txt() : super('');

  String txt = '';
}
