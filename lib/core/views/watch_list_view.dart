import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WatchListView extends StatefulWidget {
  const WatchListView({super.key});

  @override
  State<WatchListView> createState() => _WatchListViewState();
}

class _WatchListViewState extends State<WatchListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Watch list',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
      ),
      backgroundColor: bluetwo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/empty_box.svg'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'There is no movie yet!',
              style: TextStyle(
                  color: white, fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Text(
              'Find your movie by Type title,\ncategories, years, etc ',
              textAlign: TextAlign.center,
              style: TextStyle(color: grey, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
