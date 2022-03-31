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
          color: MyColors.cardBg,
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 2),
            )
          ]),
      width: size.width * 0.8,
      height: 100,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            //color: Colors.orange,
            child: Text(
              "Nivel $lv",
              style: TextStyle(
                  fontSize: 20,
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
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/icons/passport.png",
                    scale: 2,
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
                      color: const Color(0XFF7c7c7c),
                      width: 40,
                      height: 15,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/icons/suitcase.png",
                    scale: 2,
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
