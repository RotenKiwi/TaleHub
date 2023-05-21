import 'package:flutter/material.dart';
import 'package:tale_hub/Tools/palette.dart';
import '../Supabase/SupabaseHelper.dart';

class DrinkDetails extends StatefulWidget {
  final int index;

  const DrinkDetails({Key? key, required this.index}) : super(key: key);

  @override
  State<DrinkDetails> createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(60.0)),
                  child: Image(
                    image: NetworkImage(AllDrinks[widget.index]['image_url']),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: bgColor,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            size: 40,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: bgColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AllDrinks[widget.index]['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Agraham',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        AllDrinks[widget.index]['type'],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Breath',
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        AllDrinks[widget.index]['description'],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Breath',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
