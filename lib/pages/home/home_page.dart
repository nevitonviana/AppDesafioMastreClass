import 'package:app_desafios_masterclass/activity/activity.dart';
import 'package:app_desafios_masterclass/pages/view_activities/view_activities_page.dart';
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
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ViewActivitiesPage(
                  listActivity: listAnimation(),
                ),
              ),
            ),
          ),
          CardCustomWidget(
            icon: SvgPicture.asset("assets/icons/Icon awesome-glasses.svg"),
            title: "Leitura de Mockup",
            count: '2',
            description:
                "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ViewActivitiesPage(
                  listActivity: listMockup(),
                ),
              ),
            ),
          ),
          CardCustomWidget(
            icon: SvgPicture.asset("assets/icons/Icon material-toys.svg"),
            title: "Playground",
            count: '2',
            description: "Ambiente destinado a testes e estudos em geral",
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ViewActivitiesPage(
                  listActivity: listPlayground(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
