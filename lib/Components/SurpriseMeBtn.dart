import 'package:flutter/material.dart';
import '../Tools/palette.dart';

class SurpriseMeBtn extends StatelessWidget {
  const SurpriseMeBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Container(
        color: secColor,
        child: TextButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Text(
              'Surprise \n Me!',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontFamily: 'Breath',
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}