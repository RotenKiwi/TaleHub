import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import '../Components/DayDate.dart';
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
                  ),
                  // Wrap(
                  //   children: [
                  //     Container(
                  //       child: ListView.builder(
                  //         scrollDirection: Axis.horizontal,
                  //           itemCount: itemCount,
                  //           itemBuilder: (context, index) {
                  //             return Padding(
                  //               padding: EdgeInsets.all(8.0),
                  //               child: Container(
                  //                 height: 50,
                  //                 width: 50,
                  //                 color: Colors.pink,
                  //               ),
                  //             );
                  //           }),
                  //       height: 100,
                  //       width: 300,
                  //     ),
                  //   ]
                  // ),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: Container(
                      color: Colors.pink,
                      child: Expanded(
                        child: Stack(
                          children: [
                            Image(image: NetworkImage(Mocktails[0]['image_url'])),
                          ],
                        ),
                      ),
                    ),
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
