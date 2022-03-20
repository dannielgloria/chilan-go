import 'package:app/style/my_colors.dart';
import 'package:app/widgets/icon_progress.dart';
import 'package:app/widgets/level_progress_card.dart';
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
          /*Nombre de usuario*/
          Container(
            margin: EdgeInsets.all(30),
            //color: Colors.grey,
            child: Text(
              "Joss",
              style: TextStyle(
                color: MyColors.white,
                fontSize: 28,
                fontFamily:
                    GoogleFonts.lato(fontWeight: FontWeight.bold).fontFamily,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          /*Rango*/
          Container(
            margin: EdgeInsets.only(bottom: 20),
            //color: Colors.grey,
            child: Text(
              "Rango: Garibaldi",
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
            height: size.height * 0.3,
            child: Image.asset(
              'assets/images/ajolote.png',
            ),
          ),
        ],
      ),
    );
  }
}
