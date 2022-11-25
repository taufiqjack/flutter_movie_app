import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';
import 'package:flutter_movie_app/common/services/api.dart';

class HomeRepository extends ChangeNotifier {
  Dio dio = Dio();
  Response? response;
  PopularMovieModel? popularMovie;
  MovieDetailModel? movieDetail;
  CastModel? castMovie;
  NowPlayingModel? nowPlaying;
  TopRatedModel? topRated;
  UpcomingModel? upcoming;
  var isAsync = false;

  HomeRepository() {
    getPopularMovie();
    getNowPlaying();
    getUpcoming();
    getTopRated();
  }

  void getPopularMovie() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().trending}?api_key=${Api().apikey}',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      popularMovie = PopularMovieModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
    notifyListeners();
  }

  void getDetailMovie(id) async {
    try {
      isAsync = true;
      response =
          await dio.get('${Api().moviedetail}$id?api_key=${Api().apikey}',
              options: Options(headers: {
                "Accept": "application/json",
              }));

      var map = response!.data;
      movieDetail = MovieDetailModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }
    notifyListeners();
  }

  void getCast(id) async {
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
      castMovie = CastModel.fromJson(map);
      notifyListeners();
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }
  }

  void getNowPlaying() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().nowPlaying}?api_key=${Api().apikey}',
          options: Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      nowPlaying = NowPlayingModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }
    notifyListeners();
  }

  void getTopRated() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().toprated}?api_key=${Api().apikey}',
          options: Options(headers: {
            "Accept": "aplication/json",
          }));

      var map = response!.data;
      topRated = TopRatedModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }

    notifyListeners();
  }

  void getUpcoming() async {
    try {
      isAsync = true;
      response = await dio.get(
          '${Api.domain}${Api().upcoming}?api_key=${Api().apikey}',
          options: Options(headers: {
            "Accept": "aplication/json",
          }));

      var map = response!.data;
      upcoming = UpcomingModel.fromJson(map);
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    } finally {
      isAsync = false;
    }

    notifyListeners();
  }
}
