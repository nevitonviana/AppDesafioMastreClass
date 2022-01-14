import 'package:flutter/material.dart';

class CardFavoriteWidget extends StatelessWidget {
  const CardFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FlutterLogo(),
            SizedBox(height: 8),
            Text("Flutter"),
          ],
        ),
      ),
    );
  }
}
