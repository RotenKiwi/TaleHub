import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tale_hub/Components/RoundedButton.dart';
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
            const Spacer(
              flex: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "HI !",
                style: TextStyle(
                  fontSize: 65,
                  fontFamily: 'Breath',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textfield(
                            text: 'Email',
                            isPassword: false,
                            onchanged: (value) {}),
                        textfield(
                            text: 'Password',
                            isPassword: true,
                            onchanged: (value) {}),
                        const SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                            text: 'Continue',
                            press: () {},
                            color: Colors.greenAccent,
                            textColor: Colors.white,
                            length: 0.9),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Don't Have an Account?   ",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Breath',
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Breath',
                                  decoration: TextDecoration.none,
                                  color: Colors.greenAccent,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // TextButton(
                        //   onPressed: () {},
                        //   child: const Text(
                        //     "Forgot Password?",
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //       fontFamily: 'Breath',
                        //       decoration: TextDecoration.none,
                        //       color: Colors.greenAccent,
                        //     ),
                        //     textAlign: TextAlign.start,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
