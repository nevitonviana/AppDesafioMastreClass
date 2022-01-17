import 'package:flutter/material.dart';

class CardActivities extends StatelessWidget {
  final Function() onTap;
  final String counter;

  const CardActivities({Key? key, required this.onTap, required this.counter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xff055AA3),
                minRadius: 15,
                child: Text(counter),
              ),
              const Spacer(),
              const Text("Exercícios: "),
              const Padding(
                padding: EdgeInsets.only(left: 2, right: 15),
                child: Text("1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
