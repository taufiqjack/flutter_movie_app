import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class DetailMovieView extends StatefulWidget {
  const DetailMovieView({super.key});

  @override
  State<DetailMovieView> createState() => _DetailMovieViewState();
}

class _DetailMovieViewState extends State<DetailMovieView> {
  final details = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    details.getDetailMovie(Get.arguments['id']);
    return Scaffold(
      body: Obx(
        () => details.isLoad.value || details.detailMovie == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text('${details.detailMovie!.overview}'),
              ),
      ),
    );
  }
}
