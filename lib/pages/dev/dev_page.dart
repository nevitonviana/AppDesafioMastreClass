import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/card_favorite_widget.dart';
import 'widgets/chart_line.dart';
import 'widgets/dev_info_card_widget.dart';

class DevPage extends StatelessWidget {
  const DevPage({Key? key}) : super(key: key);

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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DevInfoCardWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                "Tecnologias Favoritas",
                textAlign: TextAlign.center,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CardFavoriteWidget(),
                  CardFavoriteWidget(),
                  CardFavoriteWidget(),
                  CardFavoriteWidget(),
                  CardFavoriteWidget(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("Habilidades e Competências"),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 20),
                child: Column(
                  children: const [
                    ChartLine(rate: 0.1, title: "teste"),
                    ChartLine(rate: 0.1, title: "teste"),
                    ChartLine(rate: 0.1, title: "teste"),
                    ChartLine(rate: 0.1, title: "teste"),
                    ChartLine(rate: 0.1, title: "teste"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
