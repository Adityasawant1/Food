import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:practice/widgets/homepage.dart';
// import 'package:practice/widgets/loginpage.dart';
import 'package:practice/widgets/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food",
      theme: ThemeData(primarySwatch: Colors.blue),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => login(),
      //   '/home': (context) => HomePage(),
      // },
      home: notification(),
    );
  }
}
