import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final String name;
  final Widget image;
  final Color? colorText;

  const BottomNavigationWidget({Key? key, required this.name, required this.image, this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(
            height: 7,
          ),
          Text(
            name ,
            style: TextStyle(fontSize: 11,color: colorText),
          ),
        ],
      ),
    );
  }
}
