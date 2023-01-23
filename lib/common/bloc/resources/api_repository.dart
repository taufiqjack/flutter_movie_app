import 'package:flutter_movie_app/common/bloc/resources/api_provider.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';

class HomeRepository {
  final provider = HomeProvider();

  Future<PopularMovieModel?> getPopularMovie() {
    return provider.getPopularMovie();
  }

  Future<NowPlayingModel?> getNowPlaying() {
    return provider.getNowPlaying();
  }
}

class NetworkError extends Error {}
