import 'package:flutter_movie_app/common/models/movie_detail_model.dart';
import 'package:flutter_movie_app/common/models/popular_movie_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box local;
late Box<Results> movies;
Box<MovieDetailModel>? moviesDetail;
