import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import '../Components/DayDate.dart';
import '../Components/SurpriseMeBtn.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var day = DateTime.now();
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DayDate(day: day),
                      const Spacer(),
                      SurpriseMeBtn(),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 15,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: navColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
