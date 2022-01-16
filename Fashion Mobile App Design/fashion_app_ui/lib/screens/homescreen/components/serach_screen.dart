// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xff764fee),
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              title: Text(
                'Somthing.com',
                style: TextStyle(fontFamily: "Acmew"),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
              bottom: AppBar(
                backgroundColor: Color(0xff764fee),
                automaticallyImplyLeading: false,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for something',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.camera_alt)),
                    ),
                  ),
                ),
              ),
            ),
            
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 500,
                  child: Center(
                    child: Text(
                      'This is an awesome fashion models app ',
                    ),
                  ),
                ),
                Container(
                  height: 1000,
                  color: Color(0xff764fee),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
