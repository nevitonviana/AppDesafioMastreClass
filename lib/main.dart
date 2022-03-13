import 'package:app_desafios_masterclass/pages/post/datasource/repository/dio_repository.dart';
import 'package:app_desafios_masterclass/pages/post/datasource/repository/http_server.dart';
import 'package:app_desafios_masterclass/pages/post/post_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'pages/base/base_page.dart';
import 'pages/dev/dev_page.dart';
import 'pages/post/datasource/posts.dart';
import 'pages/repositories/repositories_page.dart';
import 'pages/splash/splash_page.dart';
import 'pages/view_activities/view_activities_page.dart';

import 'route.dart';

final get = GetIt.instance;
void main() {
  setupLocators();
  runApp(const MyApp());
}

void setupLocators() {
  get.registerLazySingleton(() => Dio());
  get.registerLazySingleton(() => DioRepository(get.get()));
  get.registerLazySingleton(() => Posts(get.get()));
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
        home: (context) => const BasePage(),
        dev: (context) => const DevPage(),
        viewActivities: (context) => const ViewActivitiesPage(
              listActivity: [],
            ),
        repositories: (context) => const RepositoriesPage(),
        post: (context) => const PostPage(),
      },
    );
  }
}
