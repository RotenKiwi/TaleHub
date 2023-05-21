import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tale_hub/Screens/DrinkDetails.dart';
import 'package:tale_hub/Supabase/SupabaseHelper.dart';
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
          onPressed: () {
            int randomIndex = Random().nextInt(drinkCount);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DrinkDetails(index: randomIndex,)));
          },
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
