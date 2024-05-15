import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        getCard('Vegetable Pizza', 'Vpizza.png'),
        getCard('Fries', 'Vpizza.png'),
        getCard('Cheese Pizza', 'cheesepizza.png'),
      ],
    )),
  ));
}

Widget getCard(String text, String path) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Card(
      color: Colors.deepOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            'assets/$path',
            height: 80,
            width: 80,
            // fit: BoxFit.cover,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
  );
}
