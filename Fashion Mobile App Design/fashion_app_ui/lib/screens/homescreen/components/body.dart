// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, use_key_in_widget_constructors

import 'package:fashion_app_ui/models/models.dart';
import 'package:fashion_app_ui/screens/detailscreen/detail_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final listName = [
    "Recomended",
    "New Models",
    "2020 Show",
    "New Collection",
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xfff7f7f7),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // First two Text
              width: double.infinity,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Fashion Week",
                      style: TextStyle(
                        color: Color(0xffB67CF4),
                        fontSize: 35,
                        fontFamily: 'Prompt',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      "2021 Fashion show in paris",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff2F3640),
                      fontFamily: 'Prompt',
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Tooltip(
                  message: 'Explore',
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.explore,
                      color: Color(0xff2F3640),
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            categories(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 270,
              child: GridView.builder(
                itemCount: models.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 5,
                  childAspectRatio: 1.23,
                ),
                itemBuilder: (BuildContext context, int index) {
                  Models model = models[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    model: model,
                                  )));
                    },
                    child: Container(
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(model.img),
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 6),
                            child: Text(
                              model.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Text(
                              model.city,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 350,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.05,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    Models model = models[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 3),
                        width: 100,
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(model.img),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  categories() {
    return Container(
      height: 30,
      child: ListView.builder(
        itemCount: listName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () => setState(() {
            i = index;
            
          }),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  listName[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: i == index ? Color(0xffb67cf4) : Colors.black,
                      fontSize: i == index ? 17 : 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
