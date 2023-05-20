import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import 'package:tale_hub/Tools/weekday.dart';

import '../Components/DayDate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var day = DateTime.now();
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DayDate(day: day),
                  const Spacer(),
                  Container(
                    color: secColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'Surprise',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontFamily: 'Breath',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.change_circle_outlined), iconSize: 60,)
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(
                flex: 7,
              ),
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
      ),
    );
  }
}
