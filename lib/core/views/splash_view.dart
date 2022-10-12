import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var duration = const Duration(seconds: 2);
  @override
  void initState() {
    Future.delayed(
      duration,
      () {
        Get.toNamed('/');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkblue,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/movie_logo.svg',
          height: MediaQuery.of(context).size.height / 10,
        ),
      ),
    );
  }
}
