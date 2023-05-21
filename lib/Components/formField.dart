import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final String text;
  final bool isPassword;
  final Function(String) onchanged;

  const textfield({
    super.key,
    required this.text,
    required this.isPassword, required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        onChanged: onchanged,
        style: TextStyle(
          color: Colors.white,
        ),
        obscureText: isPassword,
        //obscuringCharacter: '%',
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 25.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid,
              ),
            )),
      ),
    );
  }
}