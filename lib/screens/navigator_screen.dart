import 'package:app/screens/home_screen.dart';
import 'package:app/screens/notifications_screen.dart';
import 'package:app/screens/profile_screen.dart';
import 'package:app/screens/qr_scanner_screen.dart';
import 'package:app/style/my_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  //Indice del navItem
  int indexTap = 0;
  //Arreglo de vistas
  final List<Widget> screensArray = [
    const HomePage(),
    const QrScanner(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: indexTap == 0
            ? MyColors.pink
            : indexTap == 1
                ? Colors.black
                : indexTap == 2
                    ? MyColors.green
                    : MyColors.orange,
        color: MyColors.blue,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: MyColors.white,
          ),
          Icon(
            Icons.qr_code_scanner,
            size: 30,
            color: MyColors.white,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: MyColors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: MyColors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            indexTap = index;
          });
        },
      ),
      body: screensArray[indexTap],
    );
  }
}
