import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3.9,
          color: Color.fromRGBO(0, 0, 0, 0.94),
          child: Center(
            child: Text(''),
          ),
        ),
        Container(child: Center()),
        Positioned(
          right: 115,
          bottom: MediaQuery.of(context).size.height / 1.8,
          // Adjust the position of the avatar
          child: CircleAvatar(
            radius: 65, // Adjust the radius of the avatar
            backgroundImage: Image.asset('assets/bg1.png').image,
          ),
        ),
        Positioned(
            right: 155,
            bottom: MediaQuery.of(context).size.height / 1.4,
            top: 50,

            // Adjust the position of the avatar
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.fastfood,
                color: Colors.amber[30],
                size: 40,
              ),
            )),
        Positioned(
            right: 95,
            bottom: 530,
            top: 85,
            // Adjust the position of the avatar
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.emoji_food_beverage,
                color: Colors.amber[30],
                size: 40,
              ),
            )),
        Positioned(
            right: 215,
            bottom: 530,
            top: 85,
            // Adjust the position of the avatar
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.icecream,
                color: Colors.amber[30],
                size: 40,
              ),
            )),
        Positioned(
            right: 240,
            bottom: 485,
            // Adjust the position of the avatar
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.local_bar,
                color: Colors.amber[30],
                size: 40,
              ),
            )),
        Positioned(
            right: 70,
            bottom: 485,
            // Adjust the position of the avatar
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.local_pizza,
                color: Colors.amber[30],
                size: 40,
              ),
            )),
      ],
    ));
  }
}
