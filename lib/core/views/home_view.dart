import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/core/themes/texstyle.dart';
import 'package:flutter_movie_app/common/riverpod/controllers/home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  int selected = 1;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeFuture);
    var duration = const Duration(milliseconds: 500);

    return Scaffold(
      backgroundColor: bluetwo,
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2), () {
            return ref.refresh(homeFuture);
          });
        },
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What do you want to watch?',
                    style: TextStyles.searchText,
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: grey,
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyles.title,
                          suffixIcon: InkWell(
                            child: Icon(
                              Icons.search,
                              color: white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: grey),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 15),
                  home.isAsync ||
                          home.popularMovie == null ||
                          home.nowPlaying == null ||
                          home.upcoming == null ||
                          home.topRated == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox(
                          height: 300,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: home.popularMovie!.results!.length,
                            itemBuilder: (context, index) {
                              var popular = home.popularMovie!.results![index];
                              return Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Get.toNamed('/details',
                                      //     arguments: {'id': popular.id});
                                      context.go('/index/${popular.id}');
                                      // context.go('/tes');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              '${Api().image}${popular.posterPath}',
                                          placeholder: (context, url) {
                                            return SkeletonAnimation(
                                              child: Container(
                                                height: 300,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          selected = 1;
                          setState(() {});
                          pageController.animateToPage(0,
                              duration: duration, curve: Curves.easeIn);
                        },
                        child: selected == 1
                            ? Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: grey),
                                child: Center(
                                  child: Text(
                                    'Now Playing',
                                    style: TextStyles.title,
                                  ),
                                ),
                              )
                            : Text(
                                'Now Playing',
                                style: TextStyles.title,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          selected = 2;
                          setState(() {});
                          pageController.animateToPage(1,
                              duration: duration, curve: Curves.easeIn);
                        },
                        child: selected == 2
                            ? Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: grey),
                                child: Center(
                                  child: Text(
                                    'Upcoming',
                                    style: TextStyles.title,
                                  ),
                                ),
                              )
                            : Text(
                                'Upcoming',
                                style: TextStyles.title,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          selected = 3;
                          setState(() {});
                          pageController.animateToPage(2,
                              duration: duration, curve: Curves.easeIn);
                        },
                        child: selected == 3
                            ? Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: grey),
                                child: Center(
                                  child: Text(
                                    'Top rated',
                                    style: TextStyles.title,
                                  ),
                                ),
                              )
                            : Text(
                                'Top rated',
                                style: TextStyles.title,
                              ),
                      ),
                      InkWell(
                          onTap: () {
                            selected = 4;
                            setState(() {});
                            pageController.animateToPage(3,
                                duration: duration, curve: Curves.easeIn);
                          },
                          child: selected == 4
                              ? Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: grey),
                                  child: Center(
                                    child: Text(
                                      'Popular',
                                      style: TextStyles.title,
                                    ),
                                  ),
                                )
                              : Text(
                                  'Popular',
                                  style: TextStyles.title,
                                )),
                    ],
                  ),
                  const SizedBox(height: 5),
                  home.isAsync
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: PageView.builder(
                            controller: pageController,
                            itemCount: 4,
                            onPageChanged: (value) {
                              selected = value + 1;
                              setState(() {});
                            },
                            itemBuilder: (context, index) {
                              return selected == 1
                                  ? GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3),
                                      shrinkWrap: true,
                                      itemCount:
                                          home.nowPlaying!.results!.length,
                                      itemBuilder: (context, i) {
                                        var popular =
                                            home.nowPlaying!.results![i];
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, bottom: 8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            child: InkWell(
                                              onTap: () {
                                                context
                                                    .go('/index/${popular.id}');

                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (context) =>
                                                //             DetailMovieView(
                                                //               id: popular.id,
                                                //             )));
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
                                                              BorderRadius
                                                                  .circular(16),
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
                                  : selected == 2
                                      ? GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3),
                                          shrinkWrap: true,
                                          itemCount:
                                              home.upcoming!.results!.length,
                                          itemBuilder: (context, i) {
                                            var popular =
                                                home.upcoming!.results![i];
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, bottom: 8),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: InkWell(
                                                  onTap: () {
                                                    context.go(
                                                        '/index/${popular.id}');
                                                  },
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        '${Api().image}${popular.posterPath}',
                                                    placeholder:
                                                        (context, url) {
                                                      return SkeletonAnimation(
                                                        child: Container(
                                                          height: 60,
                                                          width: 50,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
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
                                      : selected == 3
                                          ? GridView.builder(
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3),
                                              shrinkWrap: true,
                                              itemCount: home
                                                  .topRated!.results!.length,
                                              itemBuilder: (context, i) {
                                                var popular =
                                                    home.topRated!.results![i];
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, bottom: 8),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16)),
                                                    child: InkWell(
                                                      onTap: () {
                                                        context.go(
                                                            '/index/${popular.id}');
                                                      },
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            '${Api().image}${popular.posterPath}',
                                                        placeholder:
                                                            (context, url) {
                                                          return SkeletonAnimation(
                                                            child: Container(
                                                              height: 60,
                                                              width: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16),
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
                                          : GridView.builder(
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3),
                                              shrinkWrap: true,
                                              itemCount: home.popularMovie!
                                                  .results!.length,
                                              itemBuilder: (context, i) {
                                                var popular = home
                                                    .popularMovie!.results![i];
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, bottom: 8),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16)),
                                                    child: InkWell(
                                                      onTap: () {
                                                        context.go(
                                                            '/index/${popular.id}');

                                                        // Navigator.push(
                                                        //     context,
                                                        //     MaterialPageRoute(
                                                        //         builder: (context) =>
                                                        //             DetailMovieView(
                                                        //               id: popular.id,
                                                        //             )));
                                                      },
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            '${Api().image}${popular.posterPath}',
                                                        placeholder:
                                                            (context, url) {
                                                          return SkeletonAnimation(
                                                            child: Container(
                                                              height: 60,
                                                              width: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16),
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
                            },
                          ),
                        ),
                ],
              )),
        ),
      ),
    );
  }

  // Future<bool> backPress() async {
  //   return await showDialog(
  //       context: context,
  //       builder: ((context) {
  //         return AlertDialog(
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //           content: const Text('Do you want to exit this apps?'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 SystemNavigator.pop();
  //               },
  //               child: const Text('OK'),
  //             ),
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: const Text(
  //                 'Cancel',
  //               ),
  //             ),
  //           ],
  //         );
  //       }));
  // }
}
