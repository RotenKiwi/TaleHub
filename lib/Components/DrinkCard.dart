import 'package:flutter/material.dart';
import '../Screens/DrinkDetails.dart';
import '../Supabase/SupabaseHelper.dart';

class DrinkCard extends StatelessWidget {
  final int index;

  const DrinkCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DrinkDetails()));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: Container(
            height: 485,
            width: 360,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  image: NetworkImage(AllDrinks[index]['image_url']),
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    AllDrinks[index]['name'],
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Agraham',
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
