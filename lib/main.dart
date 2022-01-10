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
          brightness: Brightness.dark,
          // primaryColor: const Color(0xffD6DFE4),
          // scaffoldBackgroundColor: const Color(0xffD6DFE4),
          // appBarTheme: const AppBarTheme(
          //   elevation: 0,
          //   backgroundColor: Color(
          //     0xffD6DFE4,
          //   ),
          // ),
        ),
        home: const HomePage());
  }
}
