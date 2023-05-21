import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import '../Components/DayDate.dart';
import '../Components/SurpriseMeBtn.dart';
import '../Components/customRadioButton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String drink = 'cocktail';

class _HomeState extends State<Home> {
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
                      const SurpriseMeBtn(),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      CustomRadioButton(
                        text: 'Cocktail',
                        index: 'cocktail',
                        press: () {
                          setState(() {
                            drink = 'cocktail';
                          });
                        },
                        group: drink,
                      ),
                      Spacer(),
                      CustomRadioButton(
                        text: 'Mocktail',
                        index: 'mocktail',
                        press: () {
                          setState(() {
                            drink = 'mocktail';
                          });
                        },
                        group: drink,
                      ),
                      Spacer(),
                    ],
                  )
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
