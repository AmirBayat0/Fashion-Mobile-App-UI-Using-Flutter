// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unnecessary_string_escapes

import 'package:fashion_app_ui/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';

class StartBodyScreen extends StatefulWidget {
  const StartBodyScreen({Key? key}) : super(key: key);

  @override
  _StartBodyScreenState createState() => _StartBodyScreenState();
}

class _StartBodyScreenState extends State<StartBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.darken),
              image: AssetImage('assets/images/main.jpg'),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 240,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    "Best Style",
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: "Acmew",
                      color: Color(0xfffdfdfd),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 55),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Create Your Style",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfffdfdfd),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              MaterialButton(
                minWidth: 280,
                height: 45,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  "Let\'s Get Start",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: "BalsamiqSans",
                  ),
                ),
                color: Color(0xfffdfdfd),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
