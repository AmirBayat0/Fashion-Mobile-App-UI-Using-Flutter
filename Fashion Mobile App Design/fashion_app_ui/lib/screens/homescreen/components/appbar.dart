// ignore_for_file: prefer_const_constructors

import 'package:fashion_app_ui/screens/homescreen/components/serach_screen.dart';
import 'package:flutter/material.dart';

appBarw(context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.notes,
        color: Colors.black,
        size: 23,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchScreen()));
        },
      ),
    ],
    backgroundColor: Color(0xfff7f7f7),
    elevation: 0,
  );
}
