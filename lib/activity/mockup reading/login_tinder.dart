import 'package:flutter/material.dart';

class LoginTinder extends StatelessWidget {
  const LoginTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffFF6A68),
              Color(0xffFC4174),
            ],
          ),
        ),
        child: Stack(
          children: [
            Align(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/tinder-removebg-preview.png"),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "By tapping Account or Sing in, you agree to uor ",
                    style: TextStyle(fontSize: 11),
                    children: [
                      TextSpan(
                        text: 'Terms. ',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "Lean how we process your data in our ",
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'Cookies Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 30, color: Colors.transparent),
                const Button(
                  url: "https://img.icons8.com/ios-filled/20/000000/mac-os.png",
                  nameButton: "Sign in with apple",
                ),
                const Button(
                  url:
                      "https://img.icons8.com/material-sharp/20/000000/facebook-circled--v1.png",
                  nameButton: "Sign in with facebook",
                ),
                const Button(
                  url:
                      "https://img.icons8.com/ios-glyphs/20/000000/speech-bubble--v1.png",
                  nameButton: "Sign in with phone number",
                ),
                const Divider(color: Colors.transparent),
                const Text(
                  "Trouble Signing In?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const Divider(height: 10, color: Colors.transparent),
                const Divider(
                  color: Colors.black,
                  height: 30,
                  thickness: 3,
                  indent: 90,
                  endIndent: 90,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String url;
  final String nameButton;

  const Button({Key? key, required this.url, required this.nameButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 40,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Image.network(
            url,
            color: Colors.white,
          ),
          Expanded(
              child: Text(
            nameButton.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          )),
        ],
      ),
    );
  }
}
