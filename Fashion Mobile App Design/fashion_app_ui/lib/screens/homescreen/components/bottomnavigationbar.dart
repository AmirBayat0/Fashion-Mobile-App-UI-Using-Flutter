// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class BottomNavigationBarW extends StatefulWidget {
  const BottomNavigationBarW({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWState createState() => _BottomNavigationBarWState();
}

class _BottomNavigationBarWState extends State<BottomNavigationBarW> {
  
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      selectedColor: Colors.black,
      strokeColor: Colors.black,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.flash_on_outlined),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
