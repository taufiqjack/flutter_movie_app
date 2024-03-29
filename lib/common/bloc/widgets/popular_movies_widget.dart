import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/nowplaying/nowplaying_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/upcoming/upcoming_cubit.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/core/rest/rest_contract.dart';
import 'package:flutter_movie_app/core/themes/texstyle.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

class PopularMoviesWidget extends StatefulWidget {
  final int selected;
  final PageController pageController;
  final Duration duration;

  const PopularMoviesWidget(
      {required this.selected,
      required this.pageController,
      required this.duration,
      super.key});

  @override
  State<PopularMoviesWidget> createState() => _PopularMoviesWidgetState();
}

class _PopularMoviesWidgetState extends State<PopularMoviesWidget> {
  PopularmoviesCubit popularmovies = PopularmoviesCubit();
  NowplayingCubit nowplaying = NowplayingCubit();
  UpcomingCubit upcoming = UpcomingCubit();
  TopRatedCubit topRated = TopRatedCubit();

  @override
  void initState() {
    popularmovies = context.read<PopularmoviesCubit>()..getPopularMovies();
    nowplaying = context.read<NowplayingCubit>()..getNowPlaying();
    upcoming = context.read<UpcomingCubit>()..getUpcoming();
    topRated = context.read<TopRatedCubit>()..getTopRated();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularmoviesCubit, PopularmoviesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const BuildLoadingWidget(),
          loading: () => const BuildLoadingWidget(),
          error: (message) => Center(
              child: Text(
            message,
            style: TextStyle(color: white),
          )),
          success: (popular) => Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: popular.results!.length,
                  itemBuilder: (context, index) {
                    var populars = popular.results![index];
                    return Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            context.go('/index/${populars.id}');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)),
                              child: CachedNetworkImage(
                                imageUrl:
                                    '${RestContract.path}${populars.posterPath}',
                                placeholder: (context, url) {
                                  return SkeletonAnimation(
                                    child: Container(
                                      height: 300,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: grey),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Stack(
                            children: [
                              Text('${index + 1}',
                                  style: TextStyles.numberDecoration),
                              Text(
                                '${index + 1}',
                                style: TextStyles.number,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
