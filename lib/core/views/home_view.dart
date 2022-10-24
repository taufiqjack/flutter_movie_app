import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/riverpod/controllers/home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeleton_text/skeleton_text.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final home = ref.watch(homeFuture);

    return Scaffold(
      backgroundColor: bluetwo,
      body: RefreshIndicator(
        onRefresh: () => Future.delayed(const Duration(seconds: 2), () {
          ref.refresh(homeFuture);
        }),
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What do you want to watch?',
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: grey,
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: white),
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
                  home.popularMovie == null || home.isAsync
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
                                      context.go('/home/${popular.id}');
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
                                        Text(
                                          '${index + 1}',
                                          style: TextStyle(
                                            fontSize: 75,
                                            fontWeight: FontWeight.w700,
                                            foreground: Paint()
                                              ..strokeWidth = 3
                                              ..color = blue
                                              ..style = PaintingStyle.stroke,
                                          ),
                                        ),
                                        Text(
                                          '${index + 1}',
                                          style: TextStyle(
                                            color: bluetwo,
                                            fontSize: 75,
                                            fontWeight: FontWeight.w700,
                                          ),
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
                      Text(
                        'Now Playing',
                        style: TextStyle(color: white),
                      ),
                      Text(
                        'Upcoming',
                        style: TextStyle(color: white),
                      ),
                      Text(
                        'Top rated',
                        style: TextStyle(color: white),
                      ),
                      Text(
                        'Popular',
                        style: TextStyle(color: white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  home.popularMovie == null || home.isAsync
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.height / 2.85,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            shrinkWrap: true,
                            itemCount: home.popularMovie!.results!.length,
                            itemBuilder: (context, i) {
                              var popular = home.popularMovie!.results![i];
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: InkWell(
                                    onTap: () {
                                      context.go('/home/${popular.id}');

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
                                                    BorderRadius.circular(16),
                                                color: grey),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
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
