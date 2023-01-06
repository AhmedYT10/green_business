import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class User {
  final String uid;
  User({required this.uid});
}

class AuthBase{
  User _userFromFireBase(user) {
    return User(uid: user.uid);
  }

  Future<User> registerWithEmailAndPassword(
      String email, String password) async {
    final authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFireBase(authResult.user);
  }

  Future<User> loginWithEmailAndPassword(String email, String password) async {
    final authResult = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return _userFromFireBase(authResult.user);
  }

  Future<void> logout() async => await FirebaseAuth.instance.signOut();
}