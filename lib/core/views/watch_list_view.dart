import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';

class WatchListView extends StatefulWidget {
  const WatchListView({super.key});

  @override
  State<WatchListView> createState() => _WatchListViewState();
}

class _WatchListViewState extends State<WatchListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluetwo,
      body: Center(
        child: Text(
          'WatchListView',
          style: TextStyle(color: white),
        ),
      ),
    );
  }
}
