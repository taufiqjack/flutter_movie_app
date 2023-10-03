import 'package:chucker_flutter/chucker_flutter.dart';
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
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Deps {
  final getit = GetIt.instance;
  late RestConfig _restApi;
  late Dio _dio;

  Deps.init() {
    _initDependencies();
  }

  Future<void> _initDependencies() async {
    if (!kIsWeb) {
      getit.registerSingleton<ChuckerDioInterceptor>(ChuckerDioInterceptor());
    }

    _dio = Dio(RestConfig.options());
    List<Interceptor> interuptors = [];
    if (kDebugMode) {
      interuptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 180,
        ),
      );
    }
    interuptors.add(NetworkInterceptor());

    if (!kIsWeb) {
      interuptors.add(GetIt.instance<ChuckerDioInterceptor>());
    }

    _dio.interceptors.addAll(interuptors);
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
