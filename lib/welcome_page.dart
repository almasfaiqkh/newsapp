import 'package:flutter/material.dart';
import 'package:newsapp/splashscreen_view.dart';

import 'RegisterPage/login_page.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  static String tag = 'welcome-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new FlatButton(
              child: Text('Skip',
              style: TextStyle(
                fontFamily: 'Inter',
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(255,151,55,1),),
            ),
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.tag);
              },)
          ],
        ),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Selamat datang di NewsApp!',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 25,
                color: Color.fromRGBO(255,151,55,1)
              ),),
            new Text('Temukan berita terbaru di sini',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 25,
                  color: Color.fromRGBO(255,151,55,1)
              ),),
           Padding(
             padding: const EdgeInsets.only(top: 50.0),
             child: Material(
               borderRadius: BorderRadius.circular(20.0),
               child: MaterialButton(
                 minWidth: 100.0,
                 height: 50.0,
                 onPressed: () {
                   Navigator.of(context).pushNamed(LoginPage.tag);
                 },
                   color: Color.fromRGBO(255,151,55,1),
                 child: Text('Log In', style: TextStyle(
                     fontFamily: 'Inter',
                     fontSize: 15,
                     color: Colors.white)),
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
