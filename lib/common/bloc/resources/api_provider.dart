import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/core/constants/constant.dart';
import 'package:flutter_movie_app/features/cctv/models/cctv_data_diy.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HomeProvider {
  Dio dio = Dio()
    ..interceptors.add(PrettyDioLogger(
      requestBody: true,
      responseBody: true,
    ));
  Response? response;
  var isAsync = false;

  Future<PopularMovieModel?> getPopularMovie() async {
    try {
      isAsync = true;
      response = await dio.get('$domain${Api.trending}?api_key=$apiKey',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      return PopularMovieModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
    return null;
  }

  Future getDetailMovie(id) async {
    try {
      isAsync = true;
      response = await dio.get('$domain${Api.moviedetail}$id?api_key=$apiKey',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      return MovieDetailModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }
  }

  Future<NowPlayingModel?> getNowPlaying() async {
    try {
      isAsync = true;
      response = await dio.get('$domain${Api.nowPlaying}?api_key=$apiKey',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      return NowPlayingModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }
    return null;
  }

  Future<TopRatedModel?> getTopRated() async {
    try {
      isAsync = true;
      response = await dio.get('$domain${Api.toprated}?api_key=$apiKey',
          options: Options(headers: {
            "Accept": "aplication/json",
          }));

      var map = response!.data;
      return TopRatedModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
    return null;
  }

  Future<UpcomingModel?> getUpcoming() async {
    try {
      isAsync = true;
      response = await dio.get('$domain${Api.upcoming}?api_key=$apiKey',
          options: Options(headers: {
            "Accept": "aplication/json",
          }));

      var map = response!.data;
      return UpcomingModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
    return null;
  }

  Future<SearchModel?> getSearch(String word, int page) async {
    try {
      isAsync = true;
      response = await dio.get(
          '$domain${Api.search}?api_key=$apiKey&language=en-US&query=$word&page=$page&include_adult=false',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      if (kDebugMode) {
        print('search : $map');
      }
      return SearchModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }

    return null;
  }

  Future<MovieDetailModel?> getDetails(int id) async {
    try {
      isAsync = true;
      response = await dio.get('$domain${Api.moviedetail}$id?api_key=$apiKey',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      return MovieDetailModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }

    return null;
  }

  Future<CastModel?> getCast(int id) async {
    try {
      isAsync = true;
      response =
          await dio.get('$domain${Api.moviedetail}$id/credits?api_key=$apiKey',
              options: Options(headers: {
                "Accept": "application/json",
              }));

      var map = response!.data;
      return CastModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
    return null;
  }

  Future<CctvDataDiy?> getCcctvData() async {
    try {
      isAsync = true;
      response = await dio.get(
        cctv,
      );
      var data = response!.data;
      return CctvDataDiy.fromJson(data);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
    return null;
  }
}
