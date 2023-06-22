// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/populars/popularmovies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/core/rest/rest_contract.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../constans/custom_color.dart';

class PopularSlideWidget extends StatefulWidget {
  int selected;
  final PageController pageController;
  final Duration duration;
  PopularSlideWidget(
      {required this.selected,
      required this.pageController,
      required this.duration,
      super.key});

  @override
  State<PopularSlideWidget> createState() => _PopularSlideWidgetState();
}

class _PopularSlideWidgetState extends State<PopularSlideWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularmoviesCubit, PopularmoviesState>(
        builder: (context, state) {
      return state.when(
        initial: () => const BuildLoadingWidget(),
        loading: () => const BuildLoadingWidget(),
        error: (message) => Center(
          child: Text(message),
        ),
        success: (popular) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          shrinkWrap: true,
          itemCount: popular.results!.length,
          itemBuilder: (context, i) {
            var populars = popular.results![i];
            return Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 8),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: InkWell(
                  onTap: () {
                    context.go('/index/${populars.id}');
                  },
                  child: CachedNetworkImage(
                    imageUrl: '${RestContract.path}${populars.posterPath}',
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
        ),
      );
    });
  }
}
