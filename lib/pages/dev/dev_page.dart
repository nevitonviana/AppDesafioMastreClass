import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/card_favorite_widget.dart';

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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const CircleAvatar(
                      minRadius: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Neviton Viana"),
                    ),
                    const Text(
                      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.",
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 35, left: 50, right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                              "assets/icons/Icon ionic-logo-whatsapp.png"),
                          Image.asset(
                              "assets/icons/Icon awesome-github-alt.png"),
                          Image.asset(
                              "assets/icons/Icon awesome-instagram.png"),
                          Image.asset(
                              "assets/icons/Icon awesome-facebook-f.png"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text("Dart"),
                      ),
                      Expanded(
                          flex: 3,
                          child: ChartLine(
                              rate: 0.3, title: 'teste', number: 1000))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  final double rate;
  final String title;

  const ChartLine({
    Key? key,
    required this.rate,
    required this.title,
  })  : assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final lineWidget = constraints.maxWidth * rate;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            height: 20,
            width: lineWidget,
          ),
        ],
      );
    });
  }
}
