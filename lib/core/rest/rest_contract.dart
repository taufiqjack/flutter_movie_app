// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/core/rest/rest_config.dart';
import 'package:get_it/get_it.dart';

class RestContract {
  static const popular = '/3/movie/popular?';
  static const moviedetail = '/3/movie/';
  static const similiar = '/similar?';
  static const search = '/3/search/movie';
  static const nowPlaying = '/3/movie/now_playing';
  static const trending = '/3/trending/movie/week';
  static const toprated = '/3/movie/top_rated';
  static const upcoming = '/3/movie/upcoming';
  static final String _apiKey = '${dotenv.env['API_KEY']}';
  static final String _IMAGE = '${dotenv.env['IMAGE_PATH']}';
  static final String _cctv = '${dotenv.env['URI_CCTV']}';

  final GetIt _getIt = GetIt.instance;
  late RestConfig _restConfig;
  late Dio _dio;

  RestContract() {
    _restConfig = _getIt.get<RestConfig>();
    _dio = _restConfig.dio();
  }

  Future<Response> getPopularMovie() async {
    return await _dio.get(
      '$trending?api_key=$_apiKey',
    );
  }

  Future<Response> getDetailMovie(id) async {
    return await _dio.get(
      '$moviedetail$id?api_key=$_apiKey',
    );
  }

  Future<Response> getNowPlaying() async {
    return await _dio.get(
      '$nowPlaying?api_key=$_apiKey',
    );
  }

  Future<Response> getTopRated() async {
    return await _dio.get(
      '$toprated?api_key=$_apiKey',
    );
  }

  Future<Response> getUpcoming() async {
    return await _dio.get(
      '$upcoming?api_key=$_apiKey',
    );
  }

  Future<Response> getSearch(String word, int page) async {
    return await _dio.get(
      '$search?api_key=$_apiKey&language=en-US&query=$word&page=$page&include_adult=false',
    );
  }

  Future<Response> getDetails(int id) async {
    return await _dio.get(
      '$moviedetail$id?api_key=$_apiKey',
    );
  }

  Future<Response> getCast(int id) async {
    return await _dio.get(
      '$moviedetail$id/credits?api_key=$_apiKey',
    );
  }

  Future<Response> getCcctvData() async {
    return await Dio().get(
      _cctv,
    );
  }

  static String path = _IMAGE;
}
