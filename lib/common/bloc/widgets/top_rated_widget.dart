// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/top_rated/top_rated_cubit.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../constans/custom_color.dart';
import '../../services/api.dart';

class TopRatedWidget extends StatefulWidget {
  int selected;
  final PageController pageController;
  final Duration duration;
  TopRatedWidget(
      {required this.selected,
      required this.pageController,
      required this.duration,
      super.key});

  @override
  State<TopRatedWidget> createState() => _TopRatedWidgetState();
}

class _TopRatedWidgetState extends State<TopRatedWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedCubit, TopRatedState>(builder: (context, state) {
      if (state is TopRatedInitial) {
        return const BuildLoadingWidget();
      } else if (state is TopRatedLoaded) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          shrinkWrap: true,
          itemCount: state.topRated.results!.length,
          itemBuilder: (context, i) {
            var topRated = state.topRated.results![i];
            return Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 8),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: InkWell(
                  onTap: () {
                    context.go('/index/${topRated.id}');
                  },
                  child: CachedNetworkImage(
                    imageUrl: '${Api().image}${topRated.posterPath}',
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
        );
      } else if (state is TopRatedError) {
        return const SizedBox();
      } else {
        return const SizedBox();
      }
    });
  }
}
