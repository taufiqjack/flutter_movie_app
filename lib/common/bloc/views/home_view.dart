import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/popular_movie_bloc/home_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  void initState() {
    homeBloc.add(GetPopularMovie());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: BlocProvider(
          create: (_) => homeBloc,
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state is HomeError) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.message!),
                ));
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeInitial) {
                  return buildLoading();
                } else if (state is HomeLoading) {
                  return buildLoading();
                } else if (state is HomeLoaded) {
                  return ListView.builder(
                    itemCount: state.popularMovieModel.results!.length,
                    itemBuilder: (context, index) {
                      final popular = state.popularMovieModel.results![index];
                      return Card(
                        child: Text(
                          '${popular.title}',
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    },
                  );
                } else if (state is HomeError) {
                  return const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoading() => const Center(
        child: CircularProgressIndicator(),
      );
}
