import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/now_playing/now_playing_bloc.dart';
import 'package:flutter_movie_app/common/bloc/widgets/now_playing_widget.dart';
import 'package:flutter_movie_app/common/bloc/widgets/popular_movies_widget.dart';

import '../../../core/themes/texstyle.dart';
import '../../constans/custom_color.dart';
import '../blocs/popular_movie_bloc/home_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final HomeBloc homeBloc = HomeBloc();
  final NowPlayingBloc nowPlayingBloc = NowPlayingBloc();

  int selected = 1;
  PageController pageController = PageController();
  var duration = const Duration(milliseconds: 500);

  @override
  void initState() {
    homeBloc.add(GetPopularMovie());
    nowPlayingBloc.add(GetNowPlaying());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluetwo,
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => homeBloc,
              child: BlocListener<HomeBloc, HomeState>(
                listener: (context, state) {
                  if (state is HomeError) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message!),
                    ));
                  }
                },
              ),
            ),
            BlocProvider(
              create: (_) => nowPlayingBloc,
              child: BlocListener<NowPlayingBloc, NowPlayingState>(
                listener: (context, state) {
                  if (state is NowPlayingError) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message!),
                    ));
                  }
                },
              ),
            ),
            //   child: BlocBuilder<HomeBloc, HomeState>(
            //     builder: (context, state) {
            //       if (state is HomeInitial) {
            //         return buildLoading();
            //       } else if (state is HomeLoading) {
            //         return buildLoading();
            //       } else if (state is HomeLoaded) {
            //         return buildHome(state);
            //       } else if (state is HomeError) {
            //         return const SizedBox();
            //       } else {
            //         return const SizedBox();
            //       }
            //     },
            //   ),
            // ),
            // ),
          ],
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  PopularMoviesWidget(
                      selected: selected,
                      pageController: pageController,
                      duration: duration),
                  const SizedBox(height: 25),
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
                  NowPLayingWidget(
                      selected: selected,
                      pageController: pageController,
                      duration: duration)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget buildLoading() => const Center(
  //       child: CircularProgressIndicator(),
  //     );

  // Widget buildHome(HomeLoaded state) {
  //   return Column(
  //     children: [
  //       SizedBox(
  //         height: 300,
  //         child: ListView.builder(
  //           shrinkWrap: true,
  //           scrollDirection: Axis.horizontal,
  //           itemCount: state.popularMovieModel.results!.length,
  //           itemBuilder: (context, index) {
  //             var popular = state.popularMovieModel.results![index];
  //             return Stack(
  //               children: [
  //                 InkWell(
  //                   onTap: () {
  //                     // Get.toNamed('/details',
  //                     //     arguments: {'id': popular.id});
  //                     context.go('/index/${popular.id}');
  //                     // context.go('/tes');
  //                   },
  //                   child: Padding(
  //                     padding: const EdgeInsets.only(left: 10),
  //                     child: Container(
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(16)),
  //                       child: CachedNetworkImage(
  //                         imageUrl: '${Api().image}${popular.posterPath}',
  //                         placeholder: (context, url) {
  //                           return SkeletonAnimation(
  //                             child: Container(
  //                               height: 300,
  //                               width: 200,
  //                               decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(16),
  //                                   color: grey),
  //                             ),
  //                           );
  //                         },
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 Align(
  //                   alignment: Alignment.bottomRight,
  //                   child: Stack(
  //                     children: [
  //                       Text('${index + 1}',
  //                           style: TextStyles.numberDecoration),
  //                       Text(
  //                         '${index + 1}',
  //                         style: TextStyles.number,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             );
  //           },
  //         ),
  //       ),
  //       const SizedBox(height: 20),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           InkWell(
  //             onTap: () {
  //               selected = 1;
  //               setState(() {});
  //               pageController.animateToPage(0,
  //                   duration: duration, curve: Curves.easeIn);
  //             },
  //             child: selected == 1
  //                 ? Container(
  //                     height: 30,
  //                     width: 100,
  //                     decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(8), color: grey),
  //                     child: Center(
  //                       child: Text(
  //                         'Now Playing',
  //                         style: TextStyles.title,
  //                       ),
  //                     ),
  //                   )
  //                 : Text(
  //                     'Now Playing',
  //                     style: TextStyles.title,
  //                   ),
  //           ),
  //           InkWell(
  //             onTap: () {
  //               selected = 2;
  //               setState(() {});
  //               pageController.animateToPage(1,
  //                   duration: duration, curve: Curves.easeIn);
  //             },
  //             child: selected == 2
  //                 ? Container(
  //                     height: 30,
  //                     width: 100,
  //                     decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(8), color: grey),
  //                     child: Center(
  //                       child: Text(
  //                         'Upcoming',
  //                         style: TextStyles.title,
  //                       ),
  //                     ),
  //                   )
  //                 : Text(
  //                     'Upcoming',
  //                     style: TextStyles.title,
  //                   ),
  //           ),
  //           InkWell(
  //             onTap: () {
  //               selected = 3;
  //               setState(() {});
  //               pageController.animateToPage(2,
  //                   duration: duration, curve: Curves.easeIn);
  //             },
  //             child: selected == 3
  //                 ? Container(
  //                     height: 30,
  //                     width: 100,
  //                     decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(8), color: grey),
  //                     child: Center(
  //                       child: Text(
  //                         'Top rated',
  //                         style: TextStyles.title,
  //                       ),
  //                     ),
  //                   )
  //                 : Text(
  //                     'Top rated',
  //                     style: TextStyles.title,
  //                   ),
  //           ),
  //           InkWell(
  //               onTap: () {
  //                 selected = 4;
  //                 setState(() {});
  //                 pageController.animateToPage(3,
  //                     duration: duration, curve: Curves.easeIn);
  //               },
  //               child: selected == 4
  //                   ? Container(
  //                       height: 30,
  //                       width: 100,
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(8),
  //                           color: grey),
  //                       child: Center(
  //                         child: Text(
  //                           'Popular',
  //                           style: TextStyles.title,
  //                         ),
  //                       ),
  //                     )
  //                   : Text(
  //                       'Popular',
  //                       style: TextStyles.title,
  //                     )),
  //         ],
  //       ),
  //       const SizedBox(height: 5),
  //     ],
  //   );
  // }
}
