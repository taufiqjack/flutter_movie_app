import 'package:flutter_movie_app/common/riverpod/repositories/search_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider =
    ChangeNotifierProvider<SearhRepository>((ref) => SearhRepository());
