import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  final String id;
  final String title;
  final String description;

  const CardPost(
      {Key? key,
      required this.id,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            heightFactor: 2,
            child: Text(
              ' ID: $id',
              style: const TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 10),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
