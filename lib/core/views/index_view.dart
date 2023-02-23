import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_app/common/bloc/views/home_page_view.dart';
import 'package:flutter_movie_app/common/bloc/views/search_page_view.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/core/views/watch_list_view.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int selectedIndex = 0;

  List pageList = [
    const HomePageView(),
    const SearchPageView(),
    const WatchListView(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation != Orientation.landscape) {
        return Scaffold(
          body: WillPopScope(
            onWillPop: exitApp,
            child: Center(
              child: pageList[selectedIndex],
            ),
          ),
          bottomNavigationBar: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: Container(
              decoration:
                  BoxDecoration(border: Border(top: BorderSide(color: blue))),
              child: BottomNavigationBar(
                backgroundColor: bluetwo,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.label_important_outline_sharp),
                      label: 'Watch list'),
                ],
                currentIndex: selectedIndex,
                selectedItemColor: blue,
                unselectedItemColor: white,
                onTap: onItemTapped,
                elevation: 0.0,
              ),
            ),
          ),
        );
      } else {
        return Scaffold(
          body: WillPopScope(
            onWillPop: exitApp,
            child: Center(
              child: pageList[selectedIndex],
            ),
          ),
        );
      }
    });
  }

  Future<bool> exitApp() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: const Text("Keluar"),
              content:
                  const Text('Apa anda yakin ingin keluar\ndari aplikasi ini?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text('OK'),
                )
              ],
            ));
  }
}
