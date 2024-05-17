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
                  width: 300,
                  height:
                      300, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/download.jpeg'),
                      fit: BoxFit.cover,
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
