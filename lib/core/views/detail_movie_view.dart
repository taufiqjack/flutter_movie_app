import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/riverpod/controllers/home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class DetailMovieView extends ConsumerWidget {
  const DetailMovieView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final details = ref.watch(homeFuture);
    details.getDetailMovie(Get.arguments['id']);
    return Scaffold(
      backgroundColor: bluetwo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Detail'),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.bookmark),
            ),
          ),
        ],
      ),
      body: details.movieDetail == null
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
                                style: TextStyle(fontSize: 12, color: orange),
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
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Text(
                              '2022 | ',
                              style: TextStyle(color: white),
                            ),
                            Text(
                              '148 minutes | ',
                              style: TextStyle(color: white),
                            ),
                            Text(
                              'Action',
                              style: TextStyle(color: white),
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
                        style: TextStyle(color: white),
                      ),
                      Text(
                        'Review',
                        style: TextStyle(color: white),
                      ),
                      Text(
                        'Cast',
                        style: TextStyle(color: white),
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
                    style: TextStyle(color: white),
                  ),
                ),
              ],
            ),
    );
  }
}
