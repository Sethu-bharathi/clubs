import 'package:clubs/authentication/Login.dart';
import 'package:clubs/profile.dart';
import 'package:flutter/material.dart';
import 'authentication/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profilepage(),
      routes: {
        Signup.id:(context)=>Signup(),
        LoginScreen.id:(context)=>LoginScreen(),
      },
    );
  }
}

