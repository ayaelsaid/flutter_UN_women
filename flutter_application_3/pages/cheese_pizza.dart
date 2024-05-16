import 'package:flutter/material.dart';

class CheesePizza extends StatelessWidget {
  const CheesePizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Hero(
          tag: 'chpizzaImage',
          child: Image.asset('assets/pizaaf.jpg'),
        ),
      ),
    );
  }
}
