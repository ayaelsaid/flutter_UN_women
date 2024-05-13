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
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 10),
                  child: Text(
                    "WOW Pizza",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Add onPressed logic for Twitter icon
                },
                icon: Image.asset(
                  'assets/twitter.png',
                  fit: BoxFit.contain,
                  height: 50,
                  width: 50,
                ),
              ),
              SizedBox(width: 1),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 10),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: Icon(Icons.facebook, size: 50),
                    ),
                  ),
                ),
              ),
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
                  getButtonCard('Vegetable Pizza'),
                  getButtonCard('Cheese Pizza'),
                  getButtonCard('Fries'),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          'assets/pizaaf.jpg',
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                        ),
                      ),
                    ),
                    Text(
                      'Hi, I\'m the Pizza Assistant,\nwhat can I help you order?',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getButtonCard(String myText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(40),
              right: Radius.circular(40),
            ),
          ),
        ),
        onPressed: () {},
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
