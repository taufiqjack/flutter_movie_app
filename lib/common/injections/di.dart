import 'package:flutter_movie_app/common/bloc/blocs/cubits/cast/cast_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/details_movie/detail_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/nowplaying/nowplaying_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/page_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/search_movies/search_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/upcoming/upcoming_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt inject = GetIt.instance;

void setupInject() {
  inject.registerLazySingleton(() => PageCubit());
  inject.registerLazySingleton(() => SearchMoviesCubit());
  inject.registerLazySingleton(() => PopularmoviesCubit()..getPopularMovies());
  inject.registerLazySingleton(() => NowplayingCubit()..getNowPlaying());
  inject.registerLazySingleton(() => UpcomingCubit()..getUpcoming());
  inject.registerLazySingleton(() => TopRatedCubit()..getTopRated());
  inject.registerLazySingleton(() => DetailMoviesCubit());
  inject.registerLazySingleton(() => CastCubit());
}
