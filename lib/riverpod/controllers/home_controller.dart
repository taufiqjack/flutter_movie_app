import 'package:flutter_movie_app/riverpod/repositories/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeFuture =
    ChangeNotifierProvider<HomeRepository>((ref) => HomeRepository());
