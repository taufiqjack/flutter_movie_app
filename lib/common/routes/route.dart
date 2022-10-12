import 'package:flutter_movie_app/core/views/detail_movie_view.dart';
import 'package:flutter_movie_app/core/views/home_view.dart';
import 'package:flutter_movie_app/core/views/index_view.dart';
import 'package:flutter_movie_app/core/views/splash_view.dart';
import 'package:get/get.dart';

class Routes {
  static final route = [
    GetPage(
      name: '/splash',
      page: () => const SplashView(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(name: '/home', page: () => const HomeView()),
    GetPage(name: '/', page: () => const IndexView()),
    GetPage(name: '/details', page: () => const DetailMovieView()),
  ];
}
