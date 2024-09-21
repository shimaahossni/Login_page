import 'dart:async';

import 'package:flutter/material.dart';

import '../login/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName="/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 4),
          () {
        Navigator.pushReplacementNamed(context,LoginScreen.routeName);
      },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/splash.png"),
          const SizedBox(height: 50,),
          const CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
          ),
        ],
      ),
    );
  }
}
