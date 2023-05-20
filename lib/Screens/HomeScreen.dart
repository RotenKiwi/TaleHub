import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import '../Components/DayDate.dart';
import '../Components/SurpriseMeBtn.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String drink = 'cokctail';

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

class CustomRadioButton extends StatelessWidget {
  final String text;
  final String index;
  final Function() press;

  const CustomRadioButton({
    super.key,
    required this.text,
    required this.index,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: (drink == index) ? Colors.white : bgColor,
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
                  color: (drink == index) ? bgColor : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
