import 'dart:io';

import 'package:alice/alice.dart';
import 'package:easy_localization/easy_localization.dart';
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
import 'package:flutter_movie_app/core/hive/hive_stuff.dart';
import 'package:flutter_movie_app/features/bloc/cctv_data/cctv_diy_cubit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  HiveStuff.init();
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
    var alice = getit<Alice>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.instance<PageCubit>()),
        BlocProvider(create: (_) => GetIt.instance<PopularmoviesCubit>()),
        BlocProvider(create: (_) => GetIt.instance<NowplayingCubit>()),
        BlocProvider(create: (_) => GetIt.instance<UpcomingCubit>()),
        BlocProvider(create: (_) => GetIt.instance<TopRatedCubit>()),
        BlocProvider(create: (_) => GetIt.instance<SearchMoviesCubit>()),
        BlocProvider(create: (_) => GetIt.instance<DetailMoviesCubit>()),
        BlocProvider(create: (_) => GetIt.instance<CastCubit>()),
        BlocProvider(create: (_) => GetIt.instance<CctvDiyCubit>()),
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
