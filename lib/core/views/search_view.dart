import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController = TextEditingController();
  String? videoId;
  String link = 'https://www.youtube.com/watch?v=E_1bZM5_ga8';

  @override
  Widget build(BuildContext context) {
    videoId = YoutubePlayer.convertUrlToId(link);
    YoutubePlayerController youtubeController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));

    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation != Orientation.landscape) {
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
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                          fillColor: grey,
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: white),
                          suffixIcon: searchController.text.isNotEmpty
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      searchController.clear();
                                    });
                                  },
                                  child: Icon(
                                    Icons.cancel,
                                    color: white,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {},
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  searchController.text.isEmpty
                      ? YoutubePlayerBuilder(
                          player: YoutubePlayer(
                            controller: youtubeController,
                            liveUIColor: blue,
                            showVideoProgressIndicator: true,
                          ),
                          builder: (context, player) {
                            return Column(
                              children: [
                                player,
                              ],
                            );
                          },
                        )
                      : Column(
                          children: [
                            SvgPicture.asset('assets/images/search_icon.svg'),
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
                        )
                ],
              )),
            ),
          );
        } else {
          return YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: youtubeController,
              liveUIColor: blue,
              showVideoProgressIndicator: true,
            ),
            builder: (context, player) {
              return Column(
                children: [
                  player,
                ],
              );
            },
          );
        }
      },
    );
  }
}
