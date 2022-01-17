import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginUnder extends StatelessWidget {
  const LoginUnder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/loginget1.png",
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 20,
              ),
              child: Text(
                "Get your Maney\n Under Controle",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Manage your expenses\n Seamlessly",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.15,
                bottom: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff5E5CE5),
                ),
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "Sing Up With Email ID",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              height: 40,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://img.icons8.com/color/25/000000/google-logo.png"),
                  const SizedBox(width: 5),
                  Text(
                    "Sing Up With Email ID",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 20,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontWeight: FontWeight.w400),
                  text: 'Already have an account? ',
                  children: [
                    TextSpan(
                      text: "Sign IN",
                      style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
