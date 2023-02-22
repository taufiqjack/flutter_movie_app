import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/now_playing/now_playing_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/page_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/search/search_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/upcoming/upcoming_cubit.dart';
import 'package:flutter_movie_app/common/routes/route.dart';
import 'package:flutter_movie_app/common/services/http_override_cert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
        BlocProvider(
          create: (_) => PageCubit(),
        ),
        BlocProvider(
          create: (_) => PopularmoviesCubit()..getPopularMovies(),
        ),
        BlocProvider(
          create: (_) => NowPlayingCubit()..getNowPlaying(),
        ),
        BlocProvider(
          create: (_) => UpcomingCubit()..getUpcoming(),
        ),
        BlocProvider(
          create: (_) => TopRatedCubit()..getTopRated(),
        ),
        BlocProvider(
          create: (_) => SearchCubit(),
        ),
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
