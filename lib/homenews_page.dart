import 'package:flutter/material.dart';

class HomeNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: new Column(
          children: <Widget>[
            new Image.asset(
              'images/home-header.png',
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(5, 25, 5, 25),
              child: Column(
                children: <Widget>[
                  new Container(
                      alignment: Alignment(-1, 0),
                      child: new Text(
                        'Sumber Berita',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 151, 55, 1)),
                      ),
                      padding: EdgeInsets.only(left: 15, bottom: 20)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Image.asset('images/logo-detik.png'),
                      new Image.asset('images/logo-cnn.png'),
                      new Image.asset('images/logo-kompas.png')
                    ],
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment(-1, 0),
                    padding: EdgeInsets.only(left: 15, bottom: 20),
                    child: new Text(
                      'Trending',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 151, 55, 1)),
                    ),
                  ),
                  new Container(
                    alignment: Alignment(0, 0),
                    child: new Image.asset('images/trending.png'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
