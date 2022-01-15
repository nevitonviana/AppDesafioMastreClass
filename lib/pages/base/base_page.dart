import 'package:app_desafios_masterclass/pages/repositories/repositories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/pages/dev/dev_page.dart';
import '/pages/home/home_page.dart';

import 'widgets/bottom_navigation_widget.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Image.asset(
                "assets/icons/logo.png",
                height: 48,
                width: 48,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Atividade",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Flutter Masterclass",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              child: SvgPicture.asset(
                "assets/icons/Icon awesome-moon.svg",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          HomePage(),
          RepositoriesPage(),
          DevPage(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationWidget(
              onTap: () {
                setState(() {
                  _pageController.animateToPage(0,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOutQuint);
                });
              },
              name: "Atividade",
              colorText: Colors.white,
              image: SvgPicture.asset(
                "assets/icons/Icon feather-target.svg",
              ),
            ),
            Container(
              color: Colors.white,
              height: 45,
              width: 1,
            ),
            BottomNavigationWidget(
              onTap: () {
                setState(() {
                  _pageController.animateToPage(1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOutQuint);
                });
              },
              name: "Repositorio",
              colorText: Colors.white,
              image: SvgPicture.asset(
                "assets/icons/Icon awesome-github.svg",
              ),
            ),
            Container(
              color: Colors.white,
              height: 45,
              width: 1,
            ),
            BottomNavigationWidget(
              onTap: () {
                setState(() {
                  _pageController.animateToPage(2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOutQuint);
                });
              },
              name: "Sobre o dev",
              colorText: Colors.white,
              image: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
