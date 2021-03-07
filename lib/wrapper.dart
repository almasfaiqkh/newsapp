import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/RegisterPage/login_page.dart';
import 'package:newsapp/home_page.dart';
import 'package:newsapp/homenews_page.dart';
import 'package:newsapp/splashscreen_view.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    return (firebaseUser == null) ? LoginPage() : HomePage();
  }
}
