import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluetwo,
      body: Center(
        child: Text(
          'SearchView',
          style: TextStyle(color: white),
        ),
      ),
    );
  }
}
