import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tale_hub/Components/RoundedButton.dart';
import 'package:tale_hub/Components/formField.dart';

import '../HomeScreen.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

String? email;
String? password;

class _signupState extends State<signup> {
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
                "SIGNUP",
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
                          child: Text(
                            "Looks like you don't have an account. Let's create a new account for you.",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Breath',
                              decoration: TextDecoration.none,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        textfield(
                            text: 'Email',
                            isPassword: false,
                            onchanged: (value) {
                              setState(() {
                                email = value;
                              });
                            }),
                        textfield(
                            text: 'Password',
                            isPassword: true,
                            onchanged: (value) {
                              setState(() {
                                password = value;
                              });
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              child: const Text(
                                "By selecting Agree and Continue below,\nI agree to Terms of Service and Privacy\nPolicy.",
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Breath',
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                            text: 'Agree & Continue',
                            press: () {
                              onTapBtnSignUp(password!, email!, context);
                            },
                            color: Colors.greenAccent,
                            textColor: Colors.white,
                            length: 0.9),
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
void onTapBtnSignUp(String password, String email, BuildContext context) async{
  final response = await Supabase.instance.client.auth.signUp(password: password, email: email);
  if(response.session!=null){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
  } else{
    print('error');
  }
}