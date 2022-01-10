import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final String name;
  final Widget image;

  const BottomNavigationWidget(
      {Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(height: 7,),
          Text(
            name,
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
