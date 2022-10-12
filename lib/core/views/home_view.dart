import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/common/services/api.dart';
import 'package:get/get.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../common/controllers/dashboard_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final dashboard = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluetwo,
      body: SingleChildScrollView(
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
                Obx(
                  () => dashboard.isAsync.value ||
                          dashboard.popularMovie == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox(
                          height: 300,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: dashboard.popularMovie!.results!.length,
                            itemBuilder: (context, index) {
                              var popular =
                                  dashboard.popularMovie!.results![index];
                              return Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed('/details',
                                          arguments: {'id': popular.id});
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
                Obx(
                  () => dashboard.isAsync.value ||
                          dashboard.popularMovie == null
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
                            itemCount: dashboard.popularMovie!.results!.length,
                            itemBuilder: (context, i) {
                              var popular = dashboard.popularMovie!.results![i];
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16)),
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
                              );
                            },
                          ),
                        ),
                ),
              ],
            )),
      ),
    );
  }
}
