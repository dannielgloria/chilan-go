import 'package:app/style/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelProgressCard extends StatelessWidget {
  int lv;
  LevelProgressCard({
    Key? key,
    required this.size,
    required this.lv,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade700.withAlpha(200),
          borderRadius: BorderRadius.circular(50)),
      width: size.width * 0.8,
      height: 120,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            //color: Colors.orange,
            child: Text(
              "Nivel $lv",
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  color: MyColors.white,
                  decoration: TextDecoration.none),
            ),
          ),
          Container(
            //color: Colors.purple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/icons/passport.png",
                    scale: 1.5,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: MyColors.white,
                      width: 60,
                      height: 15,
                    ),
                    Container(
                      color: Colors.grey.shade900,
                      width: 40,
                      height: 15,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/icons/suitcase.png",
                    scale: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
