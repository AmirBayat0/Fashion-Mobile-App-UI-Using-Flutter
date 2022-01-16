// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fashion_app_ui/screens/homescreen/components/body.dart';
import 'package:fashion_app_ui/screens/homescreen/components/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'components/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarw(context),
      body: Body(),
      bottomNavigationBar: BottomNavigationBarW(),
    );
  }
}
