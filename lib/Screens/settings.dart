import 'package:cook/Services/auth.dart';
import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  
  AuthBase authBase = AuthBase(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Container(
            height: 20,
            width: double.infinity,
            child: IconButton(
              onPressed: () {
                authBase.logout();
                Navigator.of(context).pushReplacementNamed('login');
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
    );
  }
}