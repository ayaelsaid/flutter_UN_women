import 'package:easy_pose/pages/home.dart';
import 'package:easy_pose/sql.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sqlHelper = SqlHelper();
  await sqlHelper.initDb();
  if (sqlHelper.db != null) {
    GetIt.I.registerSingleton<SqlHelper>(sqlHelper);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Pos',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff0156da), foregroundColor: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
        colorScheme: ColorScheme.fromSwatch(
          errorColor: Colors.red,
          cardColor: Colors.blue.shade100,
          backgroundColor: Colors.white,
          primarySwatch: getMaterialColor(const Color(0xff0156da)),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }

  MaterialColor getMaterialColor(Color color) {
    final Map<int, Color> shades = {
      50: const Color.fromRGBO(136, 14, 79, .1),
      100: const Color.fromRGBO(136, 14, 79, .2),
      200: const Color.fromRGBO(136, 14, 79, .3),
      300: const Color.fromRGBO(136, 14, 79, .4),
      400: const Color.fromRGBO(136, 14, 79, .5),
      500: const Color.fromRGBO(136, 14, 79, .6),
      600: const Color.fromRGBO(136, 14, 79, .7),
      700: const Color.fromRGBO(136, 14, 79, .8),
      800: const Color.fromRGBO(136, 14, 79, .9),
      900: const Color.fromRGBO(136, 14, 79, 1),
    };
    return MaterialColor(color.value, shades);
  }
}

