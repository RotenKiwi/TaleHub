import 'package:flutter/material.dart';
import '../Tools/palette.dart';

class CustomRadioButton extends StatelessWidget {
  final String text;
  final String index;
  final Function() press;
  final String group;

  const CustomRadioButton({
    super.key,
    required this.text,
    required this.index,
    required this.press, required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: (group == index) ? Colors.white : bgColor,
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: TextButton(
            onPressed: press,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  color: (group == index) ? bgColor : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}