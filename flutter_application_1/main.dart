import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          height: 800,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/download.jpeg',
                              fit: BoxFit.contain,
                              scale: 2,
                            ),
                            SizedBox(width: 10),
                            Text('Vegetables Pizza'),
                          ],
                        ),
                      ),
                      SizedBox(height: 100),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/download(1).jpeg',
                                  fit: BoxFit.contain,
                                  scale: 2,
                                ),
                                SizedBox(width: 10),
                                Text('Cheese Pizza'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 100),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/download(2).jpeg',
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 10),
                                Text('Box of Fries'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  ));
}
