import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/core/themes/texstyle.dart';
import 'package:flutter_movie_app/riverpod/controllers/home_controller.dart';
import 'package:flutter_movie_app/riverpod/provider/data_load.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DetailMovieView extends ConsumerWidget {
  const DetailMovieView({super.key, this.id});
  final int? id;

  @override
  Widget build(BuildContext context, ref) {
    final details = ref.watch(homeFuture);
    final state = ref.read(isAsync.notifier);
    details.getDetailMovie(id);

    return Scaffold(
      backgroundColor: bluetwo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Detail'),
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
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
      body: WillPopScope(
        onWillPop: () async {
          return await showDialog(
              context: context,
              builder: ((context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  content: const Text('Do you want to exit this apps?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: const Text('OK'),
                    ),
                    TextButton( 
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Cancel',
                      ),
                    ),
                  ],
                );
              }));
        },
        child: details.movieDetail == null
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        Text(
                          'About Movie',
                          style: TextStyles.title,
                        ),
                        Text(
                          'Review',
                          style: TextStyles.title,
                        ),
                        Text(
                          'Cast',
                          style: TextStyles.title,
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
                    child: Text(
                      '${details.movieDetail!.overview}',
                      style: TextStyles.title,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
