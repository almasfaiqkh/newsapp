import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/ProfilPage/ekonomi_page.dart';
import 'package:newsapp/ProfilPage/gayahidup_page.dart';
import 'package:newsapp/ProfilPage/hiburan_page.dart';
import 'package:newsapp/ProfilPage/olahraga_page.dart';
import 'package:newsapp/ProfilPage/perempuan_page.dart';
import 'package:newsapp/ProfilPage/teknologi_page.dart';

class KategoriPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(255,151,55,1),
        title: Image.asset(
          "images/logo.png",
          width: 35,
          height: 35,),
        centerTitle: true,
      ),
        body: new ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => TeknologiPage());
                Navigator.push(context, route);
              },
              child: new Container(
                height: 80.0,
                width: 300.0,
                child: new Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: Text('Teknologi',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                      ),
                    )
                ),
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/kategori-1.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ),
            new GestureDetector(
              onTap: (){
                Route route = MaterialPageRoute(builder: (context) => PerempuanPage());
                Navigator.push(context, route);
              },
              child: new Container(
              margin: EdgeInsets.only(top: 20),
              height: 80.0,
              width: 300.0,
              child: new Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                child: Text('Perempuan',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                  ),),
              ),
              decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/kategori-2.png'),
                    fit: BoxFit.cover,
                  )
              ),
            ),),
            new GestureDetector(
              onTap: (){
                Route route = MaterialPageRoute(builder: (context) => GayaHidupPage());
                Navigator.push(context, route);
              },
             child:  new Container(
             margin: EdgeInsets.only(top: 20),
             height: 80.0,
             width: 300.0,
             child: new Padding(
               padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
               child: Text('Gaya Hidup',
                 style: TextStyle(
                   fontFamily: 'Inter',
                   fontSize: 24,
                 ),),
             ),
             decoration: new BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('images/kategori-3.png'),
                   fit: BoxFit.cover,
                 )
             ),
           ),),
            new GestureDetector(
              onTap: (){
                Route route = MaterialPageRoute(builder: (context) => EkonomiPage());
                Navigator.push(context, route);
              },
              child: new Container(
                margin: EdgeInsets.only(top: 20),
                height: 80.0,
                width: 300.0,
                child: new Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                  child: Text('Ekonomi',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                    ),),
                ),
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/kategori-4.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ),
            new GestureDetector(
              onTap: (){
                Route route = MaterialPageRoute(builder: (context) => OlahragaPage());
                Navigator.push(context, route);
              },
              child: new Container(
                margin: EdgeInsets.only(top: 20),
                height: 80.0,
                width: 300.0,
                child: new Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                  child: Text('Olahraga',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                    ),),
                ),
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/kategori-5.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ),
            new GestureDetector(
              onTap: (){
                Route route = MaterialPageRoute(builder: (context) => HiburanPage());
                Navigator.push(context, route);
              },
              child: new Container(
                margin: EdgeInsets.only(top: 20),
                height: 80.0,
                width: 300.0,
                child: new Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                  child: Text('Hiburan',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                    ),),
                ),
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/kategori-6.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ),
          ],
        )
    );
  }
}