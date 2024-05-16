import 'package:flutter/material.dart';

class VegetablePizza extends StatelessWidget {
  const VegetablePizza({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Container(
          child: Image.asset('assets/download.jpeg'),
        ),
     ),
   );
  }
}