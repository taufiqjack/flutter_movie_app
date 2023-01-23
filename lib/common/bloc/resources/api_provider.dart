import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';
import 'package:flutter_movie_app/common/services/api.dart';

class HomeProvider {
  Dio dio = Dio();
  Response? response;
  var isAsync = false;

  Future<PopularMovieModel?> getPopularMovie() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().trending}?api_key=${Api().apikey}',
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
  }

  Future getDetailMovie(id) async {
    try {
      isAsync = true;
      response =
          await dio.get('${Api().moviedetail}$id?api_key=${Api().apikey}',
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

  Future getCast(id) async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api().moviedetail}$id/credits?api_key=${Api().apikey}',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      // if (kDebugMode) {
      //   print('cast : $map');
      // }
      return CastModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
  }

  Future<NowPlayingModel?> getNowPlaying() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().nowPlaying}?api_key=${Api().apikey}',
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
  }

  Future getTopRated() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().toprated}?api_key=${Api().apikey}',
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
  }

  Future getUpcoming() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().upcoming}?api_key=${Api().apikey}',
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
  }
}
