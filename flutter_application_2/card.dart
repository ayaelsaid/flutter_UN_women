import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: Text(
                  "WOW Pizza",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset(
                'assets/twitter.png',
                fit: BoxFit.contain,
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.facebook),
            ],
          ),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getCard('Vegetable Pizza'),
                  getCard('Cheese Pizza'),
                  getCard('Fries'),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 40)),
                    Image.asset(
                      'assets/pizaaf.jpg',
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Hi, I\'m the Pizza Assistant,\nwhat can I help you order?',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ], // children
          ), // Column
        ), // Padding
      ), // Scaffold
    ); //MaterialApp
  }i

  Widget getCard(String myText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(40),
            right: Radius.circular(40),
          ),
        ),
        child: Text(
          myText,
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
