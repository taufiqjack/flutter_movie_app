// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/nowplaying/nowplaying_cubit.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/popular_slide_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/top_rated_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/upcoming_widget.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/core/constants/constant.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

class NowPLayingWidget extends StatefulWidget {
  int selected;
  final PageController pageController;
  final Duration duration;
  NowPLayingWidget(
      {required this.selected,
      required this.pageController,
      required this.duration,
      super.key});

  @override
  State<NowPLayingWidget> createState() => _NowPLayingWidgetState();
}

class _NowPLayingWidgetState extends State<NowPLayingWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NowplayingCubit, NowplayingState>(
      builder: (context, state) {
        return state.when(
          initial: () => const BuildLoadingWidget(),
          loading: () => const BuildLoadingWidget(),
          error: (message) => Center(
            child: Text(message),
          ),
          success: (nowPlaying) => widget.selected == 1
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  shrinkWrap: true,
                  itemCount: nowPlaying.results!.length,
                  itemBuilder: (context, i) {
                    var result = nowPlaying.results![i];
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: InkWell(
                          onTap: () {
                            context.go('/index/${result.id}');
                          },
                          child: CachedNetworkImage(
                            imageUrl: '$IMAGE${result.posterPath}',
                            placeholder: (context, url) {
                              return SkeletonAnimation(
                                child: Container(
                                  height: 60,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: grey),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                )
              : widget.selected == 2
                  ? UpcomingWidget(
                      selected: widget.selected,
                      pageController: widget.pageController,
                      duration: widget.duration)
                  : widget.selected == 3
                      ? TopRatedWidget(
                          selected: widget.selected,
                          pageController: widget.pageController,
                          duration: widget.duration)
                      : PopularSlideWidget(
                          selected: widget.selected,
                          pageController: widget.pageController,
                          duration: widget.duration,
                        ),
        );
      },
    );
  }
}
