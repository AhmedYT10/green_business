import 'package:cook/Widgets/auth_form.dart';
import 'package:flutter/material.dart';


enum AuthType{ login , register}

class AuthScreen extends StatelessWidget {

  final AuthType authType;

  const AuthScreen({super.key, required this.authType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    const Center(
                        child: Text("Welcome To Green Business!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.2),
                    )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Center(
                        child: Text(
                      "The Way To Apply Your Idea",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    )),
                    Image.asset(
                      "assets/logo.png",
                      height: 300,
                      width: 666,
                    ),
                  ],
                ),
              ],
            ),
            AuthForm(authType: authType,),
          ],
        ),
      ),
    );
  }
}