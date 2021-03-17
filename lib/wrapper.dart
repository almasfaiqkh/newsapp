import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/home_page.dart';
import 'package:newsapp/welcome_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static String tag = 'wrapper-page';

  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    return (firebaseUser == null) ? WelcomePage() : HomePage();
  }
}
