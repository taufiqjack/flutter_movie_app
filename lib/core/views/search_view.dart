import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {},
            child: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Search'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {},
                child: const Icon(Icons.info_outline),
              ),
            ),
          ]),
      backgroundColor: bluetwo,
      body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: searchController,
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              searchController.text.isEmpty
                  ? const SizedBox()
                  : Column(
                      children: [
                        SvgPicture.asset('assets/images/search_icon.svg'),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'we are sorry, we can not find the movie :(',
                          style: TextStyle(color: white),
                        ),
                        Text(
                          'Find your movie by Type title, categories, years, etc ',
                          style: TextStyle(color: grey),
                        ),
                      ],
                    )
            ],
          )),
    );
  }
}
