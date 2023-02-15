import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubit/popular_movies/popular_movie_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/popular_movie_bloc/home_bloc.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../../core/themes/texstyle.dart';
import '../../constans/custom_color.dart';
import '../../services/api.dart';

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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMovieCubit, PopularMovieState>(
      builder: (context, state) {
        if (state is PopularMovieInitial) {
          return const BuildLoadingWidget();
        } else if (state is PopularMovieLoaded) {
          return Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.popular.results!.length,
                  itemBuilder: (context, index) {
                    var popular = state.popular.results![index];
                    return Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            context.go('/index/${popular.id}');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)),
                              child: CachedNetworkImage(
                                imageUrl: '${Api().image}${popular.posterPath}',
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
          );
        } else if (state is HomeError) {
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
