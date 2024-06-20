import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Center(child: Text("Notification")),
            backgroundColor: Colors.white,
            leading:
                Icon(Icons.notifications_active_outlined, color: Colors.black),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ))
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10, left: 5, right: 5),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.white,
                height: 90,
                child: Card(
                    child: ListTile(
                  title: Text("User"),
                  subtitle: Text("About the product"),
                )),
              );
            }, childCount: 10)),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.notifications_off_outlined),
      ),
    );
  }
}
