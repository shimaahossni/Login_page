import 'package:flutter/material.dart';
import 'package:login/module/login/LoginScreen.dart';
import 'package:login/module/splash/splash_screen.dart';

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
      title: 'Login App',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
      },
    );
  }
}
