import 'package:flutter/material.dart';
import '../Tools/weekday.dart';

class DayDate extends StatelessWidget {
  const DayDate({
    super.key,
    required this.day,
  });

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weekday(day.weekday),
          style: const TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Breath',
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        Text(
          '${month(day.month)} ${day.day}',
          style: const TextStyle(
            decoration: TextDecoration.none,
            //fontFamily: 'Breath',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}