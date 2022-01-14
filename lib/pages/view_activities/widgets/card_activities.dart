import 'package:flutter/material.dart';

class CardActivities extends StatelessWidget {
  const CardActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        child: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Color(0xff055AA3),
              minRadius: 15,
              child: Text("1"),
            ),
            Spacer(),
            Text("Exercícios: "),
            Padding(
              padding: EdgeInsets.only(left: 2, right: 15),
              child: Text("1"),
            ),
          ],
        ),
      ),
    );
  }
}
