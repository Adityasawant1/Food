import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/widgets/GridView.dart';
import 'package:practice/widgets/drawer.dart';
import 'package:practice/widgets/homecarousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _hovering = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 80,
            ),
            Center(
              child: Text(
                "HOME",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Icon(Icons.shopping_bag_outlined)
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildHoverContainer(0, "PIZZA"),
                buildHoverContainer(1, "BURGER"),
                buildHoverContainer(2, "DRINKS"),
                buildHoverContainer(3, "SAUCES"),
                buildHoverContainer(4, "COMBO"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: HomeCarousel()),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: gridview(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_outlined),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.explore_outlined),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.qr_code_scanner_outlined),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.forum_outlined),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined),
                iconSize: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHoverContainer(int index, String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  void setHovering(int index, bool hovering) {
    setState(() {
      _hovering[index] = hovering;
    });
  }
}
