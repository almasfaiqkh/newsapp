import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeknologiPage extends StatelessWidget{
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
      body: new Container(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25, bottom: 20),
                child: Center(
                  child: Text('Teknologi', style: TextStyle(fontSize: 24),)
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new Image.asset('images/tek-1.png'),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.black, fontSize: 13.0, fontFamily: 'Inter')),
                            Text("Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan", style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: 'Inter'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new Image.asset('images/tek-2.png'),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.black, fontSize: 13.0, fontFamily: 'Inter')),
                            Text("Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan", style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: 'Inter'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new Image.asset('images/tek-3.png'),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.black, fontSize: 13.0, fontFamily: 'Inter')),
                            Text("Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan", style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: 'Inter'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new Image.asset('images/tek-4.png'),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.black, fontSize: 13.0, fontFamily: 'Inter')),
                            Text("Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan", style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: 'Inter'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new Image.asset('images/tek-5.png'),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.black, fontSize: 13.0, fontFamily: 'Inter')),
                            Text("Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan", style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: 'Inter'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new Image.asset('images/tek-6.png'),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.black, fontSize: 13.0, fontFamily: 'Inter')),
                            Text("Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan", style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: 'Inter'),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}