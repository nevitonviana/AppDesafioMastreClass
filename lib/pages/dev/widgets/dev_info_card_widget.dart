import 'package:flutter/material.dart';

class DevInfoCardWidget extends StatelessWidget {
  const DevInfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const CircleAvatar(
              minRadius: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text("Neviton Viana"),
            ),
            const Text(
              "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/icons/Icon ionic-logo-whatsapp.png"),
                  Image.asset("assets/icons/Icon awesome-github-alt.png"),
                  Image.asset("assets/icons/Icon awesome-instagram.png"),
                  Image.asset("assets/icons/Icon awesome-facebook-f.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
