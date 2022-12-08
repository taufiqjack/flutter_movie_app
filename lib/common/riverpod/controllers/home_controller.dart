import 'package:flutter_movie_app/common/riverpod/repositories/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeFuture =
    ChangeNotifierProvider<HomeRepository>((ref) => HomeRepository());
