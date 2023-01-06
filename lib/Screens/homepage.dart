import 'package:cook/Widgets/buttons.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20,),
            child: Column(
              children: <Widget> [
                const SizedBox(height: 100,),
                Image.asset("assets/logo.png" , height: 300, width: 300,),
                const SizedBox(height: 80),
                 Button(
                  text: "Settings",
                  onPressed: () => Navigator.of(context).pushNamed('settings'),
                  textColor: Colors.green,
                  bgColor: Colors.white,
                 ),


              const SizedBox(height: 10,),

                 Button(
                  text: "Get Started",
                  onPressed: () => Navigator.of(context).pushNamed('login'),
                  textColor: Colors.green,
                  bgColor: Colors.white,
                 ),
       ],
      ),
     ),
    ),
  );
 }
}