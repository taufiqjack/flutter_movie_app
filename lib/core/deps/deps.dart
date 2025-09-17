import 'package:alice/alice.dart';
import 'package:alice/core/alice_dio.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/cast/cast_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/details_movie/detail_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/nowplaying/nowplaying_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/page_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/search_movies/search_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/upcoming/upcoming_cubit.dart';
import 'package:flutter_movie_app/core/rest/network_interuptor.dart';
import 'package:flutter_movie_app/core/rest/rest_config.dart';
import 'package:flutter_movie_app/core/rest/rest_contract.dart';
import 'package:flutter_movie_app/features/bloc/cctv_data/cctv_diy_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

class Deps {
  late RestConfig _restApi;
  late Dio _dio;
  Alice alice = Alice(
      configuration: AliceConfiguration(
    showNotification: true,
  ));
  AliceDioAdapter aliceDioAdapter = AliceDioAdapter();

  Deps.init() {
    _initDependencies();
  }

  Future<void> _initDependencies() async {
    if (!kIsWeb) {
      getit.registerSingleton<Alice>(alice);
      alice.addAdapter(aliceDioAdapter);
    }

    _dio = Dio(RestConfig.options());
    List<Interceptor> interceptors = [];
    if (kDebugMode) {
      _dio.interceptors
        ..add(aliceDioAdapter)
        ..add(LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
        ));
    }
    interceptors.add(NetworkInterceptor());
    _dio.interceptors.addAll(interceptors);

    _restApi = RestConfig(_dio);
    getit.registerSingleton<RestConfig>(_restApi);
    getit.registerSingleton<RestContract>(RestContract());
    getit.registerSingleton(PageCubit());
    getit.registerSingleton(SearchMoviesCubit());
    getit.registerSingleton<PopularmoviesCubit>(PopularmoviesCubit());
    getit.registerSingleton<NowplayingCubit>(NowplayingCubit());
    getit.registerSingleton<UpcomingCubit>(UpcomingCubit());
    getit.registerSingleton<TopRatedCubit>(TopRatedCubit());
    getit.registerSingleton(DetailMoviesCubit());
    getit.registerSingleton(CastCubit());
    getit.registerSingleton(CctvDiyCubit());
  }
}
