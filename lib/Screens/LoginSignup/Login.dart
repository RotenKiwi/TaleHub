import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tale_hub/Components/formField.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/loginSignup(2).jpg'),
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "HI !",
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Breath',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Column(
                  children: [
                    formField(
                      text: 'Email',
                      horizontalPadding: 10.0,
                      fontSize: 25,
                      onChanged: (String) {},
                      password: false,
                    ),
                    formField(
                        text: 'Password',
                        horizontalPadding: 10.0,
                        fontSize: 25,
                        onChanged: (String) {},
                        password: true)
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
