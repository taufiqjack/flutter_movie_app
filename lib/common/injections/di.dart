import 'package:flutter_movie_app/common/bloc/blocs/cubits/now_playing/now_playing_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/page_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/search/search_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/upcoming/upcoming_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt inject = GetIt.instance;

void setupInject() {
  inject.registerLazySingleton(() => PageCubit());
  inject.registerLazySingleton(() => SearchCubit());
  inject.registerLazySingleton(() => PopularmoviesCubit()..getPopularMovies());
  inject.registerLazySingleton(() => NowPlayingCubit()..getNowPlaying());
  inject.registerLazySingleton(() => UpcomingCubit()..getUpcoming());
  inject.registerLazySingleton(() => TopRatedCubit()..getTopRated());
}
