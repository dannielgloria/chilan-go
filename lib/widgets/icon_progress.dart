import 'package:app/style/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              color: MyColors.mainText,
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
