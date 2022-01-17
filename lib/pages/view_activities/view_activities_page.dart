import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/card_activities.dart';

class ViewActivitiesPage extends StatelessWidget {
  final List listActivity;

  const ViewActivitiesPage({Key? key, required this.listActivity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text(
              "Animações.",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Flutterando Masterclass,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: SvgPicture.asset(
                "assets/icons/Icon awesome-moon.svg",
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listActivity.length,
        itemBuilder: (context, index) {
          return CardActivities(
            counter: '1',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => listActivity[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
