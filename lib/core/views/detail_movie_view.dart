import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/common/utils/embed_uri.dart';
import 'package:flutter_movie_app/core/themes/texstyle.dart';
import 'package:flutter_movie_app/riverpod/controllers/home_controller.dart';
import 'package:flutter_movie_app/riverpod/provider/data_load.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailMovieView extends ConsumerStatefulWidget {
  const DetailMovieView({super.key, this.id});
  final int? id;

  @override
  ConsumerState<DetailMovieView> createState() => _DetailMovieViewState();
}

class _DetailMovieViewState extends ConsumerState<DetailMovieView> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    final details = ref.watch(homeFuture);
    final state = ref.read(isAsync.notifier);
    details.getDetailMovie(widget.id);
    details.getCast(widget.id);

    return Scaffold(
      backgroundColor: bluetwo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Detail'),
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.of(context, rootNavigator: false).pop();
        //   },
        //   child: const Icon(Icons.arrow_back_ios),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                state.onSaved();
              },
              child:
                  Icon(state.onSave ? Icons.bookmark : Icons.bookmark_border),
            ),
          ),
        ],
      ),
      body:
          // WillPopScope(
          //   onWillPop: () async {
          //     return await showDialog(
          //         context: context,
          //         builder: ((context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)),
          //             content: const Text('Do you want to exit this apps?'),
          //             actions: [
          //               TextButton(
          //                 onPressed: () {
          //                   SystemNavigator.pop();
          //                 },
          //                 child: const Text('OK'),
          //               ),
          //               TextButton(
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //                 child: const Text(
          //                   'Cancel',
          //                 ),
          //               ),
          //             ],
          //           );
          //         }));
          //   },
          // child:
          details.movieDetail == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(
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
                                      '${Api().image}${details.movieDetail!.backdropPath}',
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
                                  '${Api().image}${details.movieDetail!.posterPath}',
                              height: 100,
                            ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.star_border, color: orange),
                                  Text(
                                    '${details.movieDetail!.voteAverage!}',
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
                            '${details.movieDetail!.originalTitle}',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              selected = 1;
                              setState(() {});
                            },
                            child: Text(
                              'About Movie',
                              style: TextStyles.title,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              selected = 2;
                              setState(() {});
                            },
                            child: Text(
                              'Review',
                              style: TextStyles.title,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              selected = 3;
                              setState(() {});
                            },
                            child: Text(
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
                      child: selected == 1
                          ? Text(
                              '${details.movieDetail!.overview}',
                              style: TextStyles.title,
                            )
                          : selected == 2
                              ? const SizedBox()
                              : SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 2,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3),
                                    itemCount: details.castMovie!.cast!.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      var casting =
                                          details.castMovie!.cast![index];
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 0),
                                        child: Card(
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
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: CachedNetworkImage(
                                                      fit: BoxFit.cover,
                                                      imageUrl:
                                                          '${Api().image}/${casting.profilePath}',
                                                      placeholder:
                                                          (context, url) {
                                                        return SkeletonAnimation(
                                                            child: Container(
                                                                height: 80,
                                                                width: 80,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50),
                                                                    color:
                                                                        greytwo)));
                                                      },
                                                      errorWidget: (context,
                                                          url, error) {
                                                        return Container(
                                                          height: 80,
                                                          width: 80,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                              color: grey),
                                                          child: Center(
                                                            child: Text(
                                                                'No image'),
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
                                                  style:
                                                      TextStyle(color: white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                    ),
                  ],
                ),
    );
  }
}
