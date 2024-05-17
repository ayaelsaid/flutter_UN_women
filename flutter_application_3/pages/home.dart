import 'package:flutter/material.dart';
import 'package:flutter_application_3/wedgets/bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            ExecuteAllButton(context), // Wrapping executeAllButton with Column
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      width: double.infinity,
                      height: 400,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'assets/pizaaf.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text(
                    'Hi, I\'m the Pizza Assistant,\nwhat can I help you order?',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        // ],
      ),
    );
  }

  Widget ExecuteAllButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getButtonCard(context, '/vegetablePizza', 'Vegetable Pizza'),
            getButtonCard(context, '/cheesePizza', 'Cheese Pizza'),
            getButtonCard(context, '/fries', 'Fries'),
          ],
        ),
      ),
    );
  }

  Widget getButtonCard(BuildContext context, String route, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
