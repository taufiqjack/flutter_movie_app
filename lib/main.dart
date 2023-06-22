import 'dart:io';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/cast/cast_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/details_movie/detail_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/nowplaying/nowplaying_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/page_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/search_movies/search_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/upcoming/upcoming_cubit.dart';
import 'package:flutter_movie_app/common/routes/route.dart';
import 'package:flutter_movie_app/common/services/http_override_cert.dart';
import 'package:flutter_movie_app/core/constants/constant.dart';
import 'package:flutter_movie_app/core/deps/deps.dart';
import 'package:flutter_movie_app/features/bloc/cctv_data/cctv_diy_cubit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: ENV_PATH);
  Deps.init();
  HttpOverrides.global = HttpOverriderCert();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PageCubit()),
        BlocProvider(create: (_) => PopularmoviesCubit()..getPopularMovies()),
        BlocProvider(create: (_) => NowplayingCubit()..getNowPlaying()),
        BlocProvider(create: (_) => UpcomingCubit()..getUpcoming()),
        BlocProvider(create: (_) => TopRatedCubit()..getTopRated()),
        BlocProvider(create: (_) => SearchMoviesCubit()),
        BlocProvider(create: (_) => DetailMoviesCubit()),
        BlocProvider(create: (_) => CastCubit()),
        BlocProvider(create: (_) => CctvDiyCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        routerConfig: router,
      ),
    );
  }
}
