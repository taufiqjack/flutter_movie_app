import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/cast/cast_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/details_movie/detail_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/constans/path_asset.dart';
import 'package:flutter_movie_app/common/utils/embed_uri.dart';
import 'package:flutter_movie_app/core/rest/rest_contract.dart';
import 'package:flutter_movie_app/core/themes/texstyle.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailsMoviePageView extends StatefulWidget {
  final int id;
  const DetailsMoviePageView({
    super.key,
    required this.id,
  });

  @override
  State<DetailsMoviePageView> createState() => _DetailsMoviePageViewState();
}

class _DetailsMoviePageViewState extends State<DetailsMoviePageView> {
  PageController pageController = PageController();
  int selected = 1;
  bool onSaved = false;

  @override
  void initState() {
    BlocProvider.of<DetailMoviesCubit>(context).getDetails(widget.id);
    BlocProvider.of<CastCubit>(context).getCast(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluetwo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Detail',
          style: TextStyle(color: white),
        ),
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                onSaved = !onSaved;
                setState(() {});
              },
              child: Icon(
                onSaved ? Icons.bookmark : Icons.bookmark_border,
                color: white,
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<DetailMoviesCubit, DetailMoviesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const BuildLoadingWidget(),
            loading: () => const BuildLoadingWidget(),
            error: (message) => Center(
              child: Text(message),
            ),
            success: (details) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.5,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                          child: CachedNetworkImage(
                              imageUrl:
                                  '${RestContract.path}${details.backdropPath}',
                              errorWidget: (context, url, error) => Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: grey),
                                  child: Image.asset(
                                    AssetPath.jpg('no_image'),
                                    fit: BoxFit.cover,
                                  )),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 170, horizontal: 10),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        child: CachedNetworkImage(
                            imageUrl:
                                '${RestContract.path}${details.posterPath}',
                            height: 100,
                            errorWidget: (context, url, error) => Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: grey),
                                child: Image.asset(
                                  AssetPath.jpg('no_image'),
                                  fit: BoxFit.cover,
                                )),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: greytwo.withOpacity(0.7)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star_border, color: orange),
                              Text(
                                '${details.voteAverage!}',
                                style: TextStyles.rating,
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 3.2,
                  ),
                  child: Column(
                    children: [
                      Text(
                        '${details.originalTitle}',
                        style: TextStyles.detailTitle,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              '2022 | ',
                              style: TextStyles.title,
                            ),
                            Text(
                              '148 minutes | ',
                              style: TextStyles.title,
                            ),
                            Text(
                              'Action',
                              style: TextStyles.title,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: MediaQuery.of(context).size.height / 2.5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          selected = 1;
                          setState(() {});
                          pageController.animateToPage(0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: selected == 1
                            ? Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: grey),
                                child: Center(
                                    child: Text(
                                  'About Movie',
                                  style: TextStyle(color: white),
                                )),
                              )
                            : Text(
                                'About Movie',
                                style: TextStyles.title,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          selected = 2;
                          setState(() {});
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: selected == 2
                            ? Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: grey),
                                child: Center(
                                    child: Text(
                                  'Cast',
                                  style: TextStyle(color: white),
                                )),
                              )
                            : Text(
                                'Cast',
                                style: TextStyles.title,
                              ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: MediaQuery.of(context).size.height / 2.3,
                  ),
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 2,
                    onPageChanged: (value) {
                      selected = value + 1;
                      setState(() {});
                    },
                    itemBuilder: (context, index) {
                      return selected == 1
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 10, right: 20),
                              child: Text(
                                '${details.overview}',
                                style: TextStyles.title,
                              ),
                            )
                          : BlocBuilder<CastCubit, CastState>(
                              builder: (context, state) => state.when(
                                initial: () => const BuildLoadingWidget(),
                                loading: () => const BuildLoadingWidget(),
                                error: (message) => Center(
                                  child: Text(message),
                                ),
                                success: (cast) => SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 2,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3),
                                    itemCount: cast.cast!.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      var casting = cast.cast![index];
                                      return Card(
                                        margin: const EdgeInsets.only(
                                            top: 10, left: 20, right: 20),
                                        color: Colors.transparent,
                                        elevation: 0,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                launchUrlString(
                                                    '${Embed.embedLink}${casting.originalName}',
                                                    mode: LaunchMode
                                                        .externalApplication);
                                              },
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl:
                                                        '${RestContract.path}/${casting.profilePath}',
                                                    placeholder:
                                                        (context, url) {
                                                      return SkeletonAnimation(
                                                          child: Container(
                                                              height: 80,
                                                              width: 80,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                  color:
                                                                      greytwo)));
                                                    },
                                                    errorWidget:
                                                        (context, url, error) {
                                                      return Container(
                                                        height: 80,
                                                        width: 80,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                            color: grey),
                                                        child: const Center(
                                                          child:
                                                              Text('No image'),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              // child: CircleAvatar(
                                              //   backgroundColor:
                                              //       Colors.transparent,
                                              //   foregroundImage: NetworkImage(
                                              //       '${Api().image}/${casting.profilePath}'),
                                              // ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                '${casting.name}',
                                                style: TextStyle(color: white),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
