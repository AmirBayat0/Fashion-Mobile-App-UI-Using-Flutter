// ignore_for_file: prefer_const_constructors, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'dart:ui';

import 'package:fashion_app_ui/models/models.dart';
import 'package:flutter/material.dart';

class BodyD extends StatelessWidget {
  late Models model;
  BodyD({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.img),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 300, top: 130),
                child: Column(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 38,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          size: 30,
                          color: Color(0xfffdfdfd),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 20,
                      child: Center(
                        child: Text(
                          model.comments,
                          style: TextStyle(
                            color: Color(0xfffdfdfd),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //******************************************************** */
                    SizedBox(
                      width: 50,
                      height: 38,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Color(0xfffdfdfd),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 20,
                      child: Center(
                        child: Text(
                          model.like,
                          style: TextStyle(
                            color: Color(0xfffdfdfd),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //******************************************************** */
                    SizedBox(
                      width: 50,
                      height: 38,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.access_time,
                          size: 30,
                          color: Color(0xfffdfdfd),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 20,
                      child: Center(
                        child: Text(
                          model.time,
                          style: TextStyle(
                            color: Color(0xfffdfdfd),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  child: Container(
                    width: 345,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 110),
                          child: Text(
                            model.name,
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xfffdfdfd),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          height: 100,
                          child: SingleChildScrollView(
                            child: Text(
                              model.description,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xfffdfdfd),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 100),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: 180,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffC20F2C),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Follow',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xfffdfdfd),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.add_circle,
                                    color: Color(0xfffdfdfd),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
