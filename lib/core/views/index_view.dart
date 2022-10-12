import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/core/views/home_view.dart';
import 'package:flutter_movie_app/core/views/search_view.dart';
import 'package:flutter_movie_app/core/views/watch_list_view.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int selectedIndex = 0;

  List pageList = [
    const HomeView(),
    const SearchView(),
    const WatchListView(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageList[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.label_important_outline_sharp),
              label: 'Watch list'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: blue,
        onTap: onItemTapped,
      ),
    );
  }
}
