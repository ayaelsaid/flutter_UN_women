

import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/cheese_pizza.dart';
import 'package:flutter_application_3/pages/veagetable_pizza.dart';
import 'package:flutter_application_3/pages/fries.dart';

class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllOption(context, VegetablePizza(), 'Vegetable Pizza'),
        AllOption(context, CheesePizza(), 'Cheese Pizza'),
        AllOption(context, Fries(), 'Fries'),
      ],
    );
  }

  Widget AllOption(BuildContext context, Widget page, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (ctx) => page),
            );
          },
          child: Text(text),
        ),
      ],
    );
  }
}
