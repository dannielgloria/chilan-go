import 'package:app/screens/forgot_password_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

/// Main function.
void main() {
  runApp(const MyApp());
}

/// Example app widget.
class MyApp extends StatelessWidget {
  /// Main app widget.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Login',
      theme: ThemeData(
          primarySwatch: Colors.blue), //const MaterialColor(0xFF6666FF, color)
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/login': (BuildContext context) => const LoginScreen(),
        '/forgotPass': (BuildContext context) => const ForgotPasswordScreen(),
        '/welcome': (BuildContext context) => const WelcomeScreen(),
      },
    );
  }
}
