import 'package:flutter/material.dart';
import 'package:newsapp/home_page.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {

  bool hidePassword = true;
  void passwordVisibility(){
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(255,151,55,1), //change your color here
          ),
        title: Text('Ganti Kata Sandi', style: TextStyle(color: Color.fromRGBO(255,151,55,1), fontSize: 18),)
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),
            buildPassword(),
            SizedBox(height: 15,),
            newPassword(),
            SizedBox(height: 15,),
            confirmNewPassword(),
            SizedBox(height: 15,),
            new Padding(
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
            )
          ],
        )
      ),
    );
  }

  Widget buildPassword(){
    return TextFormField(
      obscureText: hidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Kata Sandi Lama',labelStyle: TextStyle(
          color: Color.fromRGBO(255,151,55,1)
      ),
        suffixIcon: GestureDetector(
          onTap: (){
            passwordVisibility();
          },
          child: Icon(
            hidePassword?Icons.visibility_off : Icons.visibility,
            color: hidePassword ? Colors.grey : Color.fromRGBO(255,151,55,1),
          ),
        ),
        isDense: true,
      ),
    );
  }
  Widget newPassword(){
    return TextFormField(
      obscureText: hidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Kata Sandi Baru',labelStyle: TextStyle(
          color: Color.fromRGBO(255,151,55,1)
      ),
        suffixIcon: GestureDetector(
          onTap: (){
            passwordVisibility();
          },
          child: Icon(
            hidePassword?Icons.visibility_off : Icons.visibility,
            color: hidePassword ? Colors.grey : Color.fromRGBO(255,151,55,1),
          ),
        ),
        isDense: true,
      ),
    );
  }
  Widget confirmNewPassword(){
    return TextFormField(
      obscureText: hidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Konfirmasi Kata Sandi Baru',labelStyle: TextStyle(
        color: Color.fromRGBO(255,151,55,1)
      ),
        suffixIcon: GestureDetector(
          onTap: (){
            passwordVisibility();
          },
          child: Icon(
            hidePassword?Icons.visibility_off : Icons.visibility,
            color: hidePassword ? Colors.grey : Color.fromRGBO(255,151,55,1),
          ),
        ),
        isDense: true,
      ),
    );
  }
}
