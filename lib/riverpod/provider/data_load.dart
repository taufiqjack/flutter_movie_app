import 'package:flutter_riverpod/flutter_riverpod.dart';

final isAsync = StateNotifierProvider((ref) {
  return DataLoad();
});

class DataLoad extends StateNotifier<bool> {
  DataLoad() : super(false);

  void load() => state;
}
