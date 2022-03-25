import 'package:app/screens/profile_components/profile_menu.dart';
import 'package:app/screens/profile_components/profile_pic.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/profile.png",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/notification.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/settings.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/help.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/sign_out.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}
