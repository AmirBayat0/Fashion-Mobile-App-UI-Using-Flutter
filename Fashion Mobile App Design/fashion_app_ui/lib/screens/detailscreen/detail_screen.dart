// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:fashion_app_ui/models/models.dart';
import 'package:fashion_app_ui/screens/detailscreen/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  late Models model;
  DetailsScreen({required this.model});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xfffdfdfd),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Color(0xfffdfdfd),
              ),
            )
          ],
        ),
        body:BodyD(model: model,)
      ),
    );
  }
}
