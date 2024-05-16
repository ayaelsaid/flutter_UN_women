

import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/cheese_pizza.dart';
import 'package:flutter_application_3/pages/veagetable_pizza.dart';
import 'package:flutter_application_3/pages/fries.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
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
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  'assets/twitter.png',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  // Add onPressed logic for Facebook icon
                },
                icon: Icon(Icons.facebook, size: 30),
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
            Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

        AllOption(context, VegetablePizza(), 'Vegetable Pizza'),
        AllOption(context, CheesePizza(), 'Cheese Pizza'),
        AllOption(context, Fries(), 'Fries'),
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
    );
  }

  Widget AllOption(BuildContext context, Widget page, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (ctx) => page),
            );
          },
          child: Text(text),
        ),
      ],
    );
  }
}
