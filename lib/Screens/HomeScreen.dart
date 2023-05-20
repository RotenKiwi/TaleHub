import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import 'package:tale_hub/Tools/weekday.dart';

import '../Components/DayDate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var day = DateTime.now();
    return Container(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Spacer(flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DayDate(day: day),
              ],
            ),
            Spacer(flex: 7,),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                color: navColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
