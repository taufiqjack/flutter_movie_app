import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/blocs/cubits/search_movies/search_movies_cubit.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/constans/path_asset.dart';
import 'package:flutter_movie_app/core/rest/rest_contract.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({super.key});

  @override
  State<SearchPageView> createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  final SearchMoviesCubit searchBloc = SearchMoviesCubit();
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
            child: Icon(
              Icons.arrow_back_ios_new,
              color: white,
            ),
          ),
          title: Text(
            'Search',
            style: TextStyle(color: white),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.info_outline,
                  color: white,
                ),
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
                        searchBloc.getSearch(searchController.text, page);
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
              BlocBuilder<SearchMoviesCubit, SearchMoviesState>(
                bloc: searchBloc,
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const BuildLoadingWidget(),
                    error: (message) => Center(
                      child: Text(message),
                    ),
                    success: (search) => searchController.text.isEmpty
                        ? const SizedBox()
                        : search.results!.isEmpty
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.height / 5),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(AssetPath.svg(
                                      'search_icon',
                                    )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'we are sorry, we can not find the movie :(',
                                      style: TextStyle(color: white),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Find your movie by Type title, categories, years, etc ',
                                      style: TextStyle(color: grey),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: search.results!.length,
                                  itemBuilder: (context, index) {
                                    final result = search.results![index];
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
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
                                                    BorderRadius.circular(16),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      '${RestContract.path}${result.backdropPath}',
                                                  height: 120,
                                                  width: 95,
                                                  fit: BoxFit.cover,
                                                  errorWidget:
                                                      (context, url, error) {
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
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
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('${result.title}',
                                                        style: TextStyle(
                                                            color: white)),
                                                    RichText(
                                                      textAlign:
                                                          TextAlign.center,
                                                      text: TextSpan(children: [
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
                                                              color: white,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis),
                                                        ),
                                                      ]),
                                                    ),

                                                    RichText(
                                                      textAlign:
                                                          TextAlign.center,
                                                      text: TextSpan(children: [
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
                                                              color: white,
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
                              ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
