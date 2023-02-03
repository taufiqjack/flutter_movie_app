import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/search/search_bloc.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({super.key});

  @override
  State<SearchPageView> createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  final SearchBloc searchBloc = SearchBloc();
  TextEditingController searchController = TextEditingController();
  var formatter = DateFormat('dd-MM-yyyy');
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {},
            child: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Search'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {},
                child: const Icon(Icons.info_outline),
              ),
            ),
          ]),
      backgroundColor: bluetwo,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: searchController,
                  onChanged: (value) {
                    Future.delayed(
                      const Duration(seconds: 3),
                      () {
                        searchBloc
                            .add(GetSearchMovie(searchController.text, page));
                      },
                    );
                  },
                  style: TextStyle(color: white),
                  decoration: InputDecoration(
                      fillColor: grey,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: white),
                      suffixIcon: InkWell(
                        onTap: () {
                          searchController.clear();
                          setState(() {});
                        },
                        child: Icon(
                          Icons.cancel,
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
              BlocProvider(
                create: (context) => searchBloc,
                child: BlocListener<SearchBloc, SearchState>(
                  listener: (context, state) {
                    if (state is SearchError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message!),
                      ));
                    }
                  },
                  child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      if (state is SearchInitial) {
                        return const SizedBox();
                      } else if (state is SearchLoading) {
                        return const BuildLoadingWidget();
                      } else if (state is SearchLoaded) {
                        return searchController.text.isEmpty
                            ? const SizedBox()
                            : state.searchModel.results!.isEmpty
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/images/search_icon.svg'),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'we are sorry, we can not find the movie :(',
                                          style: TextStyle(color: white),
                                        ),
                                        Text(
                                          'Find your movie by Type title, categories, years, etc ',
                                          style: TextStyle(color: grey),
                                        ),
                                      ],
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount:
                                          state.searchModel.results!.length,
                                      itemBuilder: (context, index) {
                                        final result =
                                            state.searchModel.results![index];
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: InkWell(
                                            onTap: () {
                                              context.go('/index/${result.id}');
                                            },
                                            child: Card(
                                              elevation: 0,
                                              color: bluetwo,
                                              child: Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                          '${Api().image}${result.backdropPath}',
                                                      height: 120,
                                                      width: 95,
                                                      fit: BoxFit.cover,
                                                      errorWidget: (context,
                                                          url, error) {
                                                        return Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                              color: grey),
                                                          child: const Icon(
                                                              Icons.error),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 12,
                                                  ),
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('${result.title}',
                                                            style: TextStyle(
                                                                color: white)),
                                                        RichText(
                                                          textAlign:
                                                              TextAlign.center,
                                                          text: TextSpan(
                                                              children: [
                                                                WidgetSpan(
                                                                    child: Icon(
                                                                  Icons
                                                                      .star_border_outlined,
                                                                  color: orange,
                                                                  size: 20,
                                                                )),
                                                                TextSpan(
                                                                  text:
                                                                      '${result.voteAverage}',
                                                                  style: TextStyle(
                                                                      color:
                                                                          white,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis),
                                                                ),
                                                              ]),
                                                        ),

                                                        RichText(
                                                          textAlign:
                                                              TextAlign.center,
                                                          text: TextSpan(
                                                              children: [
                                                                WidgetSpan(
                                                                    child: Icon(
                                                                  Icons
                                                                      .calendar_today_outlined,
                                                                  color: white,
                                                                  size: 15,
                                                                )),
                                                                const TextSpan(
                                                                    text: ' '),
                                                                TextSpan(
                                                                  text: result
                                                                          .releaseDate!
                                                                          .isNotEmpty
                                                                      ? formatter
                                                                          .format(
                                                                          DateTime
                                                                              .parse(
                                                                            '${result.releaseDate}',
                                                                          ),
                                                                        )
                                                                      : '${result.releaseDate}',
                                                                  style: TextStyle(
                                                                      color:
                                                                          white,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis),
                                                                ),
                                                              ]),
                                                        ),
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                      } else if (state is SearchError) {
                        return const SizedBox();
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
