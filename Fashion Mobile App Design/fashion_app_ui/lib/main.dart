// ignore_for_file: prefer_const_constructors

import 'package:fashion_app_ui/screens/startscreen/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/////////////////////////////
//*Instagram: @CodeWithFlexz
// ----------------
//*Github: AmirBayat0
// ----------------
//*Youtube: Programming with Flexz
/////////////////////////////

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
