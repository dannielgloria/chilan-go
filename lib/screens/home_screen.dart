import 'package:app/style/my_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: MyColors.pink,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /*Logros y puntaje*/
          Container(
            //color: Colors.green,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconProgress(
                  value: '35',
                  iconPath: 'assets/icons/trophy.png',
                ),
                IconProgress(
                  value: '1,507',
                  iconPath: 'assets/icons/bag.png',
                )
              ],
            ),
          ),
          /*Nivel y progreso*/
          LevelProgressCard(
            size: size,
            lv: 28,
          ),
          /*Rango*/
          Container(
            margin: EdgeInsets.all(30),
            //color: Colors.grey,
            child: Text(
              "Rango: Garibaldi",
              style: TextStyle(
                color: MyColors.white,
                fontSize: 28,
                fontFamily:
                    GoogleFonts.lato(fontWeight: FontWeight.bold).fontFamily,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          /*Nombre de usuario*/
          Container(
            margin: EdgeInsets.only(bottom: 10),
            //color: Colors.grey,
            child: Text(
              "Joss",
              style: TextStyle(
                color: MyColors.white,
                fontSize: 22,
                fontFamily: GoogleFonts.lato().fontFamily,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          /*Avatar*/
          Container(
            margin: EdgeInsets.all(20),
            height: size.height * 0.25,
            child: Image.asset('assets/images/ajolote.png'),
          ),
        ],
      ),
    );
  }
}

class IconProgress extends StatelessWidget {
  String value;
  String iconPath;

  IconProgress({
    Key? key,
    required this.value,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          //color: Colors.grey,
          child: Text(
            value,
            style: TextStyle(
              color: MyColors.white,
              fontSize: 22,
              fontFamily: GoogleFonts.lato().fontFamily,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          //color: Colors.amber,
          child: Image.asset(
            iconPath,
            scale: 1.5,
          ),
        )
      ],
    );
  }
}

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
