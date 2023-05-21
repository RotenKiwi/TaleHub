import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tale_hub/Components/RoundedButton.dart';
import 'LoginSignup/Login.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/introPage(1).jpg'),
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: 40,
              ),
              const Text(
                "TaleHub",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Agraham',
                    fontSize: 55),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Elevate your cocktail game with TaleHub. Where recipes meet mixology mastery",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Breath',
                      fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RoundedButton(
                text: 'Shake Things Up',
                press: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => login()));
                },
                color: Colors.white,
                textColor: Colors.black,
                length: 0.85,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
