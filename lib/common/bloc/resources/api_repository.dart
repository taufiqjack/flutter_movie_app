import 'package:flutter_movie_app/common/bloc/resources/api_provider.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';

class HomeRepository {
  final provider = HomeProvider();

  Future<PopularMovieModel?> getPopularMovie() {
    return provider.getPopularMovie();
  }

  Future<NowPlayingModel?> getNowPlaying() {
    return provider.getNowPlaying();
  }

  Future<UpcomingModel?> getUpcomingMovie() {
    return provider.getUpcoming();
  }

  Future<TopRatedModel?> getTopRatedMovie() {
    return provider.getTopRated();
  }

  Future<SearchModel?> getSearch(word, page) {
    return provider.getSearch(word, page);
  }
}

class NetworkError extends Error {}
