import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newsapp/ProfilPage/password_page.dart';
import 'package:newsapp/home_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Nama Pengguna',
        hintText: 'Alexa Aurelia',
        contentPadding: EdgeInsets.all(10),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'alexaaurelia@gmail.com',
        contentPadding: EdgeInsets.all(10),
      ),
    );

    final telp = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Nomor Telepon',
        hintText: '085784365376',
        contentPadding: EdgeInsets.all(10),
      ),
    );

    final location = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Lokasi',
        hintText: 'Jakarta',
        contentPadding: EdgeInsets.all(10),
      ),
    );

    final changePass = new FlatButton(
      child: Text('Ganti kata sandi',
        style: TextStyle(
          fontFamily: 'Inter',
          decoration: TextDecoration.underline,
          color: Color.fromRGBO(255,151,55,1),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordPage()));
      },
    );

    final passwordButton = Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          minWidth: 90.0,
          height: 40.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Color.fromRGBO(255,151,55,1),
          child: Text('Simpan', style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color.fromRGBO(255,151,55,1), //change your color here
        ),
      ),
      backgroundColor: Colors.white,
      body: new Center(
        child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/profil.png'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 0, bottom: 30),
              child: Center(
                child: Text('Ganti Foto Profil',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(255,151,55,1),
                  ),
                ),
              )
            ),
            SizedBox(height: 20,),
            name,
            SizedBox(height: 5,),
            email,
            SizedBox(height: 20,),
            telp,
            SizedBox(height: 20,),
            location,
            SizedBox(height: 5,),
            changePass,
            passwordButton
          ],
        ),
      ),
    );
  }
}

