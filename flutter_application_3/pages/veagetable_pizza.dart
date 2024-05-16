import 'package:flutter/material.dart';

class VegetablePizza extends StatelessWidget {
  const VegetablePizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Hero(
          tag: 'vpizzaImage',
          child: Image.asset('assets/pizaaf.jpg'),
        ),
      ),
    );
  }
}
