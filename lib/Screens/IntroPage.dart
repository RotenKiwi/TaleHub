import 'dart:ui';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/introPage(1).jpg'),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 11.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(),
              Text(
                "TaleHub",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Agraham',
                    fontSize: 55),
              ),
              Spacer(),
              Text(
                "Elevate your drinking experience.",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Breath',
                    fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
