import 'package:flutter/material.dart';

class Fries extends StatelessWidget {
  const Fries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'fImage',
          child: Image.asset('assets/pizaaf.jpg'),
        ),
      ),
    );
  }
}
