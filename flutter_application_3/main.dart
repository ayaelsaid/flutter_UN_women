import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/cheese_pizza.dart';
import 'package:flutter_application_3/pages/fries.dart';
import 'package:flutter_application_3/pages/home.dart';
import 'package:flutter_application_3/pages/veagetable_pizza.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        (ctx) => HomePage(),
        (ctx) => CheesePizza(),
        (ctx) => VegetablePizza(),
        (cTX) => Fries()
      },
    );
  }
}

