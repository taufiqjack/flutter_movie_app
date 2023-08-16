import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/core/constants/constant.dart';
import 'package:flutter_movie_app/core/hive/main_storage.dart';
import 'package:hive_flutter/adapters.dart';

class HiveStuff {
  static Future<void> init() async {
    if (!kIsWeb) {
      Hive.initFlutter();
    }

    Hive.registerAdapter(MovieDataAdapter());
    Hive.registerAdapter(MovieDetailDataAdapter());

    local = await Hive.openBox(SAVE);
    movies = await Hive.openBox<Results>(MOVIES);
    moviesDetail = await Hive.openBox<MovieDetailModel>(MOVIESDETAIL);
  }
}
