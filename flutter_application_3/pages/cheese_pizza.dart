import 'package:flutter/material.dart';

class CheesePizza extends StatelessWidget {
  const CheesePizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/cheese.png'),
        ),
      ),
    );
  }
}
