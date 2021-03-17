import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newsapp/homenews_page.dart';
import 'package:provider/provider.dart';

import 'auth.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    final title = Text(
      'Masuk',
      style: TextStyle(
        color: Color.fromRGBO(255, 151, 55, 1),
        fontFamily: 'Inter',
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    );

    final email = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      style: TextStyle(height: 2),
      decoration: InputDecoration(
        filled: false,
        hintText: 'masukkan email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );

    final password = TextFormField(
      controller: passwordController,
      obscureText: true,
      autofocus: false,
      style: TextStyle(height: 2),
      decoration: InputDecoration(
        hintText: 'masukkan password',
        filled: false,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );

/*    startTime() async {
      var duration = new Duration(seconds: 6);
      return new Timer(duration, () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return HomeNewsPage();
          }),
        );
      });
    };*/

    final loginButton = Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          minWidth: 90.0,
          height: 40.0,
          onPressed: () async {
/*            await AuthServices.signIn(
                emailController.text, passwordController.text);
            if (emailController.text == null ||
                emailController.text.isEmpty ||
                passwordController.text == null ||
                passwordController.text.isEmpty) {
              Fluttertoast.showToast(
                  msg: "Please insert email or password!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 1);
            } else {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeNewsPage()));
            }*/
            if (emailController.text == null ||
                emailController.text.isEmpty ||
                passwordController.text == null ||
                passwordController.text.isEmpty) {
              Fluttertoast.showToast(
                  msg: "Please insert email or password!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 1);
            }

            if (firebaseUser != null) {
              // wrong call in wrong place!
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeNewsPage()));
              Navigator.pop(context);
            } else {
              await AuthServices.signIn(
                  emailController.text, passwordController.text);
            }
          },
          color: Color.fromRGBO(255, 151, 55, 1),
          child: Text('masuk',
              style: TextStyle(
                  fontFamily: 'Inter', fontSize: 15, color: Colors.white)),
        ),
      ),
    );

    final daftar = Row(
      children: <Widget>[
        new Text(
          'Belum punya akun?',
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color.fromRGBO(255, 151, 55, 1),
          ),
        ),
        new FlatButton(
          child: Text(
            'Daftar',
            style: TextStyle(
              fontFamily: 'Inter',
              decoration: TextDecoration.underline,
              color: Color.fromRGBO(255, 151, 55, 1),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(RegisterPage.tag);
          },
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 151, 55, 1),
          elevation: 0.0,
          title: Image.asset(
            "images/logo.png",
            width: 35,
            height: 35,
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: StreamProvider.value(
            value: AuthServices.firebaseUserStream,
            child: ListView(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                title,
                SizedBox(height: 50.0),
                email,
                SizedBox(height: 15.0),
                password,
                SizedBox(height: 15.0),
                loginButton,
                daftar,
              ],
            ),
          ),
        ));
  }
}
