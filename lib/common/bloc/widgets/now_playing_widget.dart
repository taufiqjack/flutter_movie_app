import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/now_playing/now_playing_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/popular_movie_bloc/home_bloc.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
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
    return BlocBuilder<NowPlayingBloc, NowPlayingState>(
      builder: (context, state) {
        if (state is NowPlayingInitial) {
          return const BuildLoadingWidget();
        } else if (state is NowPlayingLoading) {
          return const BuildLoadingWidget();
        } else if (state is NowPlayingLoaded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: PageView.builder(
              controller: widget.pageController,
              itemCount: 4,
              onPageChanged: (value) {
                widget.selected = value + 1;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return widget.selected == 1
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        shrinkWrap: true,
                        itemCount: state.nowPlayingModel.results!.length,
                        itemBuilder: (context, i) {
                          var popular = state.nowPlayingModel.results![i];
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
                                  imageUrl:
                                      '${Api().image}${popular.posterPath}',
                                  placeholder: (context, url) {
                                    return SkeletonAnimation(
                                      child: Container(
                                        height: 60,
                                        width: 50,
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
                          );
                        },
                      )
                    : widget.selected == 2
                        ? const Center(
                            child: Text(
                              'Empty',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        : widget.selected == 3
                            ? const Center(
                                child: Text(
                                  'Empty',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            : const Center(
                                child: Text(
                                  'Empty',
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
              },
            ),
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
