import 'package:flutter/material.dart';
import 'package:newsapp/RegisterPage/login_page.dart';
import 'package:newsapp/RegisterPage/register_page.dart';
import 'package:newsapp/services/auth.dart';
import 'package:newsapp/splashscreen_view.dart';
import 'package:newsapp/welcome_page.dart';
import 'package:newsapp/wrapper.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Wrapper.tag: (context) => Wrapper(),
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterPage.tag: (context) => RegisterPage(),
    WelcomePage.tag: (context) => WelcomePage()
  };

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        value: AuthServices.firebaseUserStream,
        child: MaterialApp(
          title: 'NewsApp',
          routes: routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Inter',
          ),
          home: SplashScreenPage(),

        ));
  }
}
