import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:flutter_movie_app/core/themes/texstyle.dart';
import 'package:flutter_movie_app/core/views/pdf_view.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final file = await PdfView.generateCenteredText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nTincidunt id proin volutpat lobortis semper at.Enim fringilla et, mi urna ullamcorper.\nMattis dignissim nisi augue ullamcorper varius. Adipiscing elit euismod risus scelerisque pretium tempus. Et a, sapien, feugiat posuere lacus curabitur. Vitae non, dignissim consequat odio faucibus feugiat. Habitasse urna bibendum adipiscing eu velit vitae viverra. Ac a felis a at commodo pellentesque. Blandit massa elementum lectus augue sit.\nSapien quis malesuada id leo. Massa urna, eu morbi imperdiet. Consectetur tincidunt sit leo proin euismod vel nibh praesent commodo. Molestie id ornare quam augue nec. Mi ullamcorper quam nunc tincidunt diam congue parturient. Lorem faucibus malesuada mauris malesuada suspendisse volutpat condimentum. Molestie massa, dignissim eget sed. Turpis rhoncus magna adipiscing orci fermentum, iaculis dignissim lectus. At amet odio consectetur quis consequat. Rutrum velit ornare sit aliquet leo in pharetra, quisque. Vulputate vel egestas viverra mi, mauris gravida urna, tellus. Sapien laoreet odio lobortis quam. Ac amet, mi tellus massa vitae sit. Ut velit malesuada fusce nibh sagittis ullamcorper eu risus. Ultricies nisi ultrices ac ut euismod feugiat scelerisque. Adipiscing egestas non quis laoreet et habitasse ullamcorper faucibus. Consequat turpis metus, sed viverra mus tempus nisi, etiam. Est augue sed enim malesuada. Habitasse in id est et, velit. Semper a tellus ultricies metus, non. Maecenas nec aliquet sapien nunc augue pellentesque tristique risus, scelerisque. Odio vulputate massa fringilla posuere et, urna. Tristique amet, bibendum posuere sit tristique vestibulum quis cursus aliquam. At eget nec aliquam, dignissim tincidunt vitae amet, sed dignissim. Facilisis ullamcorper et quam.');
          PdfView.openFile(file);
        },
        child: const Icon(Icons.picture_as_pdf),
      ),
      backgroundColor: bluetwo,
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2), () {
            ref.refresh(homeFuture);
          });
        },
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        Text('${index + 1}',
                                            style: TextStyles.numberDecoration),
                                        Text(
                                          '${index + 1}',
                                          style: TextStyles.number,
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
                        style: TextStyles.title,
                      ),
                      Text(
                        'Upcoming',
                        style: TextStyles.title,
                      ),
                      Text(
                        'Top rated',
                        style: TextStyles.title,
                      ),
                      Text(
                        'Popular',
                        style: TextStyles.title,
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
