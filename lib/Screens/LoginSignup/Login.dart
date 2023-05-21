import 'dart:ui';

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/loginSignup(2).jpg'),
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
            fit: BoxFit.cover),
        ),
      child: Column(
        children: [
          Text("HI"),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Column(
                children: [

                ],
              ),
            ),
          ),
        ]
      ),
      );
  }
}
