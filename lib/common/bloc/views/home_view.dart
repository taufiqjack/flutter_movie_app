import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubit/page_cubit.dart';
import 'package:flutter_movie_app/common/bloc/blocs/now_playing/now_playing_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/top_rated/top_rated_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/upcoming/upcoming_bloc.dart';
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
  final UpcomingBloc upcomingBloc = UpcomingBloc();
  final TopRatedBloc topRatedBloc = TopRatedBloc();

  PageController pageController = PageController();
  var duration = const Duration(milliseconds: 500);

  @override
  void initState() {
    homeBloc.add(GetPopularMovie());
    nowPlayingBloc.add(GetNowPlaying());
    upcomingBloc.add(GetUpcomingMovie());
    topRatedBloc.add(GetTopRatedMovie());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PageCubit cubit = BlocProvider.of<PageCubit>(context);

    return Scaffold(
      backgroundColor: bluetwo,
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2), () {
            homeBloc.add(GetPopularMovie());
            nowPlayingBloc.add(GetNowPlaying());
          });
        },
        child: SafeArea(
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
              BlocProvider(
                create: (_) => upcomingBloc,
                child: BlocListener<UpcomingBloc, UpcomingState>(
                  listener: (context, state) {
                    if (state is UpcomingError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message!),
                      ));
                    }
                  },
                ),
              ),
              BlocProvider(
                create: (_) => topRatedBloc,
                child: BlocListener<TopRatedBloc, TopRatedState>(
                  listener: (context, state) {
                    if (state is TopRateError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message!),
                      ));
                    }
                  },
                ),
              ),
            ],
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: BlocBuilder<PageCubit, PageState>(
                      builder: (context, state) {
                    return Column(
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
                            selected: state.selected,
                            pageController: pageController,
                            duration: duration),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                cubit.changePage(1);
                                pageController.animateToPage(0,
                                    duration: duration, curve: Curves.easeIn);
                              },
                              child: state.selected == 1
                                  ? Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                cubit.changePage(2);
                                pageController.animateToPage(1,
                                    duration: duration, curve: Curves.easeIn);
                              },
                              child: state.selected == 2
                                  ? Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                cubit.changePage(3);
                                pageController.animateToPage(2,
                                    duration: duration, curve: Curves.easeIn);
                              },
                              child: state.selected == 3
                                  ? Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                  cubit.changePage(4);
                                  pageController.animateToPage(3,
                                      duration: duration, curve: Curves.easeIn);
                                },
                                child: state.selected == 4
                                    ? Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: PageView.builder(
                              controller: pageController,
                              itemCount: 4,
                              onPageChanged: (value) {
                                cubit.changePage(value + 1);
                              },
                              itemBuilder: (context, index) {
                                return NowPLayingWidget(
                                    selected: state.selected,
                                    pageController: pageController,
                                    duration: duration);
                              }),
                        ),
                      ],
                    );
                  })),
            ),
          ),
        ),
      ),
    );
  }
}
