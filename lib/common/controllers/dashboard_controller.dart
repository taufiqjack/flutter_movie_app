import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dioo;

class DashboardController extends GetxController {
  dioo.Response? response;
  dioo.Dio dio = dioo.Dio();
  var isAsync = false.obs;
  var isLoad = false.obs;
  PopularMovieModel? popularMovie;
  MovieDetailModel? detailMovie;
  var id = 0.obs;

  @override
  Future<void> onInit() async {
    getPopularMovie();
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  Future<void> onClose() async {
    super.onClose();
  }

  getPopularMovie() async {
    try {
      isAsync(true);
      response = await dio.get('${Api.popular}api_key=${Api().apikey}',
          options: dioo.Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      if (kDebugMode) {
        print('popular $map');
      }
      popularMovie = PopularMovieModel.fromJson(map);
    } on dioo.DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync(false);
    }
  }

  void getDetailMovie(var id) async {
    try {
      isLoad(true);
      response =
          await dio.get('${Api().moviedetail}$id?api_key=${Api().apikey}',
              options: dioo.Options(headers: {
                "Accept": "application/json",
              }));

      update();

      var map = response!.data;
      if (kDebugMode) {
        print('details $map');
      }
      detailMovie = MovieDetailModel.fromJson(map);
    } on dioo.DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isLoad(false);
      update();
    }
  }
}
