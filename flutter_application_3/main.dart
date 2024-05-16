import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/cheese_pizza.dart';
import 'package:flutter_application_3/pages/fries.dart';
import 'package:flutter_application_3/pages/home.dart';
import 'package:flutter_application_3/pages/veagetable_pizza.dart';
import 'package:flutter_application_3/wedgets/web_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/cheesePizza':
            return MaterialPageRoute(builder: (context) => const CheesePizza());
          case '/vegetablePizza':
            return MaterialPageRoute(builder: (context) => const VegetablePizza());
          case '/fries':
            return MaterialPageRoute(builder: (context) => const Fries());
          case '/webView':
            return MaterialPageRoute(builder: (context) => const WebViewPage());
          default:
            return null;
        }
      },
    );
  }
}
