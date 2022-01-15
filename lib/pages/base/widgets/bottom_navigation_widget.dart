import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final String name;
  final Widget image;
  final Color? colorText;
  final Function() onTap;
  const BottomNavigationWidget({Key? key, required this.name, required this.image, this.colorText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
