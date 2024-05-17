import 'package:flutter/material.dart';
import 'package:flutter_application_3/wedgets/bar.dart';
import 'package:flutter_application_3/wedgets/button_card.dart';

class VegetablePizza extends StatelessWidget {
  const VegetablePizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          ExecuteAllButton(),
          Center(
            child: Hero(
              tag: 'vpizzaImage',
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
                          'assets/download.jpeg'), // Path to the image asset
                      fit: BoxFit.cover, // Cover the entire circle
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
