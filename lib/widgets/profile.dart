import 'package:flutter/material.dart';
import 'package:practice/widgets/profilestack.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            SizedBox(
              width: 85,
            ),
            Text(
              'Profile',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 84,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings))
          ],
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.94),
      ),
      body: stack(),
    );
  }
}
