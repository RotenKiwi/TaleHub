import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/weekday.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var day = DateTime.now().weekday;
    return Column(
      children: [
        Text(weekday(day))
      ],
    );
  }
}
