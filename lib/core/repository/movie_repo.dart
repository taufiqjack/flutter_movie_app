import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';
import 'package:flutter_movie_app/core/helper/dio_exception.dart';
import 'package:flutter_movie_app/core/rest/rest_contract.dart';
import 'package:flutter_movie_app/features/cctv/models/cctv_data_diy.dart';
import 'package:get_it/get_it.dart';

class MovieRepository {
  final RestContract _restContract = GetIt.instance.get<RestContract>();

  Future<PopularMovieModel?> getPopularMovie() async {
    try {
      var response = await _restContract.getPopularMovie();

      var map = response.data;
      return PopularMovieModel.fromJson(map);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<MovieDetailModel?> getDetailMovie(id) async {
    try {
      var response = await _restContract.getDetailMovie(id);
      var map = response.data;
      return MovieDetailModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<NowPlayingModel?> getNowPlaying() async {
    try {
      var response = await _restContract.getNowPlaying();

      var map = response.data;
      return NowPlayingModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<TopRatedModel?> getTopRated() async {
    try {
      var response = await _restContract.getTopRated();

      var map = response.data;
      return TopRatedModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    }
    return null;
  }

  Future<UpcomingModel?> getUpcoming() async {
    try {
      var response = await _restContract.getUpcoming();

      var map = response.data;
      return UpcomingModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    }
    return null;
  }

  Future<SearchModel?> getSearch(String word, int page) async {
    try {
      var response = await _restContract.getSearch(word, page);

      var map = response.data;
      if (kDebugMode) {
        print('search : $map');
      }
      return SearchModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<MovieDetailModel?> getDetails(int id) async {
    try {
      var response = await _restContract.getDetails(id);
      var map = response.data;
      return MovieDetailModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<CastModel?> getCast(int id) async {
    try {
      var response = await _restContract.getCast(id);

      var map = response.data;
      return CastModel.fromJson(map);
    } on DioException catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    }
    return null;
  }

  Future<CctvDataDiy?> getCcctvData() async {
    try {
      var response = await _restContract.getCcctvData();
      var data = response.data;
      return CctvDataDiy.fromJson(data);
    } on DioException catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    }
    return null;
  }
}
