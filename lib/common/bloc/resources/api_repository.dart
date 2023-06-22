/* import 'package:flutter_movie_app/common/bloc/resources/api_provider.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/now_playing_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:flutter_movie_app/common/models/search_model.dart';
import 'package:flutter_movie_app/common/models/top_rated_model.dart';
import 'package:flutter_movie_app/common/models/upcoming_model.dart';
import 'package:flutter_movie_app/features/cctv/models/cctv_data_diy.dart';

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

  Future<SearchModel?> getSearch(String word, int page) {
    return provider.getSearch(word, page);
  }

  Future<MovieDetailModel?> getDetails(int id) {
    return provider.getDetails(id);
  }

  Future<CastModel?> getCast(int id) {
    return provider.getCast(id);
  }

  Future<CctvDataDiy?> getCctvData() {
    return provider.getCcctvData();
  }
}

class NetworkError extends Error {}
 */