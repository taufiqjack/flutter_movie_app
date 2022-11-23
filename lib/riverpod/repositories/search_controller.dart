import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:dio/dio.dart' as dioo;

class SearhRepository extends ChangeNotifier {
  dioo.Response? response;
  dioo.Dio dio = dioo.Dio();
  var isAsync = false;
  SearchModel? search;

  void getSearch(word, page) async {
    try {
      isAsync = true;

      response = await dio.get(
          '${Api.domain}${Api().search}?api_key=${Api().apikey}&language=en-US&query=$word&page=$page&include_adult=false',
          options: dioo.Options(headers: {
            "Accept": "application/json",
          }));

      var map = response!.data;
      if (kDebugMode) {
        print('search : $map');
      }
      search = SearchModel.fromJson(map);
      notifyListeners();
    } on dioo.DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isAsync = false;
    }
  }
}
