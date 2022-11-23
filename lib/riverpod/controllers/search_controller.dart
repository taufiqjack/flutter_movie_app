import 'package:flutter_movie_app/riverpod/repositories/search_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider =
    ChangeNotifierProvider<SearhRepository>((ref) => SearhRepository());
