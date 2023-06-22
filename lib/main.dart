import 'dart:io';

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
import 'package:flutter_movie_app/common/injections/di.dart';
import 'package:flutter_movie_app/common/routes/route.dart';
import 'package:flutter_movie_app/common/services/http_override_cert.dart';
import 'package:flutter_movie_app/core/constants/constant.dart';
import 'package:flutter_movie_app/features/bloc/cctv_data/cctv_diy_cubit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  await dotenv.load(fileName: ENV_PATH);
  setupInject();
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
        BlocProvider<PageCubit>(create: (_) => inject<PageCubit>()),
        BlocProvider<PopularmoviesCubit>(
            create: (_) => inject<PopularmoviesCubit>()),
        BlocProvider<NowplayingCubit>(create: (_) => inject<NowplayingCubit>()),
        BlocProvider<UpcomingCubit>(create: (_) => inject<UpcomingCubit>()),
        BlocProvider<TopRatedCubit>(create: (_) => inject<TopRatedCubit>()),
        BlocProvider<SearchMoviesCubit>(
            create: (_) => inject<SearchMoviesCubit>()),
        BlocProvider<DetailMoviesCubit>(
            create: (_) => inject<DetailMoviesCubit>()),
        BlocProvider<CastCubit>(create: (_) => inject<CastCubit>()),
        BlocProvider<CctvDiyCubit>(create: (_) => inject<CctvDiyCubit>()),
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
