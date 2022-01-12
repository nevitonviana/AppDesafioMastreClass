import 'package:flutter/material.dart';

import '/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // brightness: Brightness.dark,
          primaryColor: const Color(0xff121517),
          backgroundColor: const Color(0xff121517),
          cardColor: const Color(0xff172026),
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.black,
          ),
        ),
        home: const HomePage());
  }
}
