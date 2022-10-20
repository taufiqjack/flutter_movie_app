import 'package:flutter_movie_app/core/views/detail_movie_view.dart';
import 'package:flutter_movie_app/core/views/home_view.dart';
import 'package:flutter_movie_app/core/views/index_view.dart';
import 'package:flutter_movie_app/core/views/splash_view.dart';
import 'package:go_router/go_router.dart';

// static final route = [
//   GetPage(
//     name: '/splash',
//     page: () => const SplashView(),
//     transition: Transition.fade,
//     transitionDuration: const Duration(seconds: 2),
//   ),
//   GetPage(name: '/home', page: () => const HomeView()),
//   GetPage(name: '/', page: () => const IndexView()),
//   GetPage(name: '/details', page: () => const DetailMovieView()),
// ];

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return const HomeView();
      },
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) {
            var id = int.parse(state.params['id']!);
            return DetailMovieView(id: id);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/index',
      builder: (context, state) {
        return const IndexView();
      },
    ),
  ],
);
