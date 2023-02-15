// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubit/now_playing/now_playing_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/popular_movie_bloc/home_bloc.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/popular_slide_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/top_rated_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/upcoming_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../constans/custom_color.dart';
import '../../services/api.dart';

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
    return BlocBuilder<NowPlayingCubit, NowPlayingState>(
        builder: (context, state) {
      if (state is NowPlayingInitial) {
        return const BuildLoadingWidget();
      } else if (state is NowPlayingLoaded) {
        return widget.selected == 1
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                shrinkWrap: true,
                itemCount: state.nowPlaying.results!.length,
                itemBuilder: (context, i) {
                  var popular = state.nowPlaying.results![i];
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: InkWell(
                        onTap: () {
                          context.go('/index/${popular.id}');
                        },
                        child: CachedNetworkImage(
                          imageUrl: '${Api().image}${popular.posterPath}',
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
                      );
      } else if (state is HomeError) {
        return const SizedBox();
      } else {
        return const SizedBox();
      }
    });
  }
}
