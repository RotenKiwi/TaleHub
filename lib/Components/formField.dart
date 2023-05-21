import 'package:flutter/material.dart';

class formField extends StatelessWidget {
  final String text;

  //final Color textColor;
  final double horizontalPadding;
  final double fontSize;
  final Function(String) onChanged;
  final bool password;

  const formField({
    super.key,
    required this.text,
    //required this.textColor,
    required this.horizontalPadding,
    required this.fontSize,
    required this.onChanged, required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 15),
      child: TextFormField(
        obscureText: password,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          hintText: text,
          hintStyle: TextStyle(
            //color: textColor,
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
