import 'package:flutter/material.dart';
import 'package:newsapp/welcome_page.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  static String tag = 'splashscreen-page';

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration,(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return WelcomePage();
        }),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,151,55,1),
      body: Center(
        child: Image.asset(
          "images/logo.png",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
