import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import '../Components/DayDate.dart';
import '../Components/DrinkCard.dart';
import '../Components/SurpriseMeBtn.dart';
import '../Components/customRadioButton.dart';
import 'package:tale_hub/Supabase/SupabaseHelper.dart';

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DayDate(day: day),
                      const Spacer(),
                      const SurpriseMeBtn(
                          //Todo: Add functionality to this button
                          ),
                    ],
                  ),
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
                ),
                Container(
                  height: 500,
                  width: 400,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return DrinkCard(index: index,);
                      }),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
