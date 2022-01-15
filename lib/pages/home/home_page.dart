import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/card_custum_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CardCustomWidget(
            icon: SvgPicture.asset("assets/icons/Icon awesome-running.svg"),
            title: "Animações",
            count: '4',
            description:
                "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
          ),
          CardCustomWidget(
            icon: SvgPicture.asset("assets/icons/Icon awesome-glasses.svg"),
            title: "Leitura de Mockup",
            count: '2',
            description:
                "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
          ),
          CardCustomWidget(
            icon: SvgPicture.asset("assets/icons/Icon material-toys.svg"),
            title: "Playground",
            count: '2',
            description: "Ambiente destinado a testes e estudos em geral",
          ),
        ],
      ),
    );
  }
}
