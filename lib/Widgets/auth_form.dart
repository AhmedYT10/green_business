import 'package:flutter/material.dart';
import 'package:green_business/Screens/auth_screen.dart';
import 'package:green_business/Services/auth.dart';
import 'package:green_business/Widgets/buttons.dart';

class AuthForm extends StatefulWidget {


   final AuthType authType;

  const AuthForm({super.key, required this.authType});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {

  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  AuthBase authBase = AuthBase();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget> [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,),
              child: Column(
                children: <Widget> [
                  const SizedBox(height: 16),
                  TextFormField(
                    onChanged: (value) => _email = value,
                    validator: (value) => value!.isEmpty ? 'Enter a valid email' : null,
                    decoration: const InputDecoration(
                      labelText: "Enter Your Email",
                      hintText: "EX: test@gmail.com"
                    ),
                  ),

                  const SizedBox(height: 12),

                  TextFormField(
                    onChanged: (value) => _password = value,
                    validator: (value) => value!.length < 6 ? 'Your Password is must be more than 6 characters' : null,
                    decoration: const InputDecoration(
                      labelText: "Enter Your Password",                     
                  ),
                  obscureText: true,
                 ),

                 const SizedBox(height: 12),

                 Button(
                  text: widget.authType == AuthType.login ? 'Login' : 'Register',
                  onPressed: () async {
                    if(_formKey.currentState!.validate())
                    {
                      if(widget.authType == AuthType.login)
                      {
                        await authBase.loginWithEmailAndPassword(_email , _password);
                        Navigator.of(context).pushReplacementNamed('home');
                      }else{
                        await authBase.registerWithEmailAndPassword(_email , _password);
                        Navigator.of(context).pushReplacementNamed('home');
                      }
                    }
                  },
                  textColor: Colors.green,
                  bgColor: Colors.blue,
                 ),

                 const SizedBox(height: 5),

                 TextButton(
                  onPressed: () {
                    if(widget.authType == AuthType.login)
                    {
                      Navigator.of(context).pushReplacementNamed('register');
                    }else {Navigator.of(context).pushReplacementNamed('login');}
                  },
                  child: Text(widget.authType == AuthType.login 
                  ? "Don't have an account?"
                  : "You have an account?",
                  style: const TextStyle(color: Colors.black54, fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                 ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}