import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_things/widgets/support_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "assets/images/headphone_icon.png",
    "assets/images/laptop.png",
    "assets/images/watch.png",
    "assets/images/TV.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey, Hassan',
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                    Text(
                      'Good Morning',
                      style: AppWidget.lightTextFeildStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/boy.jpg",
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: AppWidget.lightTextFeildStyle(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFFfd6f3e),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Container(
                    height: 130,
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFFD6F3E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "All",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ))),
                Expanded(
                  child: Container(
                    height: 130,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoriesTitles(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesTitles extends StatelessWidget {
  String image;
  CategoriesTitles({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
