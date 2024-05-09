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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/download.jpeg',
                            fit: BoxFit.contain,
                            scale: 2,
                          ),
                          Text('Vegetables Pizza'),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/download(1).jpeg',
                            fit: BoxFit.contain,
                            scale: 2,
                          ),
                          Text('Cheese Pizza'),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/download(2).jpeg',
                            fit: BoxFit.contain,
                            scale: 2,
                          ),
                          Text('Box of Fries'),
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
  ));
}
