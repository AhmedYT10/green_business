import 'package:cook/Screens/employing%20a%20job&worker.dart';
import 'package:flutter/material.dart';
/*import 'package:green_business/Screens/auth_screen.dart';
import 'package:green_business/Screens/homepage.dart';
import 'package:green_business/Screens/settings.dart';*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: Emplying_a_worker(),

      //  home: const IntroPage(),

      /* routes:
      {
        'home' : (context) => const IntroPage(),
        'settings' : (context) => const Settings(),
        'login' : (context) => const AuthScreen(authType: AuthType.login),
        'register' : (context) => const AuthScreen(authType: AuthType.register),
      },*/
    );
  }
}