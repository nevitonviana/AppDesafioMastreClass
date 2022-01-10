import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/bottom_navigation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigationWidget(
            name: "Atividade",
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
            name: "Repositorio",
            image: SvgPicture.asset(
              "assets/icons/Icon awesome-github.svg",
            ),
          ),
          Container(
            color: Colors.white,
            height: 45,
            width: 1,
          ),
          const BottomNavigationWidget(
            name: "Sobre o dev",
            image: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
