import 'package:app_desafios_masterclass/pages/splash/splash_page.dart';
import 'package:app_desafios_masterclass/route.dart';
import 'package:flutter/material.dart';

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
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        primaryColor: const Color(0xff121517),
        backgroundColor: const Color(0xff121517),
        cardColor: const Color(0xff172026),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
      ),
      initialRoute: "/",
      routes: {
        splash: (context) => const SplashPage(),
      },
    );
  }
}
