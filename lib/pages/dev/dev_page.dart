import 'package:flutter/material.dart';

import 'widgets/card_favorite_widget.dart';
import 'widgets/chart_line.dart';
import 'widgets/dev_info_card_widget.dart';

class DevPage extends StatelessWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    ChartLine(rate: 0.4, title: "Dart/Flutter"),
                    ChartLine(rate: 0.1, title: "React"),
                    ChartLine(rate: 0.1, title: "Javascript"),
                    ChartLine(rate: 0.1, title: "HTML"),
                    ChartLine(rate: 0.1, title: "CSS"),
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
