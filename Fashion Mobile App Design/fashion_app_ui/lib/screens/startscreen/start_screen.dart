// ignore_for_file: prefer_const_constructors

import 'package:fashion_app_ui/screens/startscreen/components/body.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({ Key? key }) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartBodyScreen(),
      
    );
  }
}