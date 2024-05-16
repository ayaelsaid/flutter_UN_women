import 'package:flutter/material.dart';

class Fries extends StatelessWidget {
  const Fries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Container(
          child: Image.asset('assets/download(2).jpeg'),
        ),
      ),
    );
  }
}