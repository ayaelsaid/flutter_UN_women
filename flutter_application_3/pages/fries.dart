import 'package:flutter/material.dart';
import 'package:flutter_application_3/wedgets/bar.dart';
import 'package:flutter_application_3/wedgets/button_card.dart';

class Fries extends StatelessWidget {
  const Fries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(children: [
        ExecuteAllButton(),
        Center(
          child: Hero(
            tag: 'fImage',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 300, // Adjust the size as needed
                height:
                    300, // Ensure the width and height are equal for a circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Set the shape to circle
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/download(2).jpeg'), // Path to the image asset
                    fit: BoxFit.cover, // Cover the entire circle
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
