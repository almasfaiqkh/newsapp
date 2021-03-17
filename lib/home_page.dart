import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/ProfilPage/profil_page.dart';
import 'package:newsapp/RegisterPage/auth.dart';
import 'package:provider/provider.dart';

import 'Web/web_view_container.dart';

class HomePage extends StatelessWidget {
  final detik = ['https://www.detik.com/'];
  final cnn = ['https://www.cnnindonesia.com/'];
  final liputan6 = ['https://www.liputan6.com/'];
  final kapanlagi = ['https://www.kapanlagi.com/'];
  final merdeka = ['https://www.merdeka.com/'];
  final jawapos = ['https://www.Jawapos.com/'];
  final jpnn = ['https://www.JPNN.com/'];
  final sindonews = ['https://www.Sindonews.com/'];

  static String tag = 'home-page';
  final String title;
  TabController tabController;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseUser fUser = Provider.of<FirebaseUser>(context);

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(255, 151, 55, 1),
        title: Image.asset(
          "images/logo.png",
          width: 35,
          height: 35,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('${fUser.displayName}'),
              accountEmail: Text('${fUser.email}'),
              currentAccountPicture: new Container(
                margin: EdgeInsets.all(10),
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        image: AssetImage('images/guest.png'),
                        fit: BoxFit.cover)),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/bg-user.png'),
                fit: BoxFit.cover,
              )),
            ),
            /*ListTile(
              leading: Icon(Icons.settings_backup_restore),
              title: Text('Riwayat Berita'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RiwayatBeritaPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Kategori'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KategoriPage()));
              },
            ),*/
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log out'),
              onTap: () async {
                await AuthServices.signOut();
              },
            )
          ],
        ),
      ),
      /*body: new DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              automaticallyImplyLeading : false,
              actions: <Widget>[],
              title: new TabBar(
                tabs: [
                  new Tab(child: Text('Home', style: TextStyle(color:  Color.fromRGBO(255, 155, 55, 1), fontSize: 15)),),
                  new Tab(child: Text('Berita Lokal',style: TextStyle(color:  Color.fromRGBO(255, 155, 55, 1), fontSize: 15)),),
                  new Tab(child: Text('Berita Umum',style: TextStyle(color:  Color.fromRGBO(255, 155, 55, 1), fontSize: 15)),)
                ],
                indicatorColor: Color.fromRGBO(255,151,55,1),
                labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
              ),
            ),
            body: new TabBarView(
              controller: tabController,
              children: <Widget>[
                HomeNewsPage(),
                LocalNewsPage(),
                GeneralNewsPage()
              ],
            ),
          )),*/
      body: new SingleChildScrollView(
        child: new Container(
          margin: EdgeInsets.fromLTRB(5, 25, 5, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: new Text(
                    'Sumber Berita',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 151, 55, 1)),
                  ),
                  padding: EdgeInsets.only(left: 15, bottom: 10)),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:
                      detik.map((link) => _urlDetik(context, link)).toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: cnn.map((link) => _urlCNN(context, link)).toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: sindonews
                      .map((link) => _urlSindonews(context, link))
                      .toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: liputan6
                      .map((link) => _urlLiputan6(context, link))
                      .toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: jawapos
                      .map((link) => _urlJawapos(context, link))
                      .toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: merdeka
                      .map((link) => _urlMerdeka(context, link))
                      .toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: kapanlagi
                      .map((link) => _urlKapanlagi(context, link))
                      .toList(),
                )),
              ),
              new Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:
                      jpnn.map((link) => _urlJpnn(context, link)).toList(),
                )),
              ),

              /*new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                    },
                    child: Image.asset(
                      'images/logo-detik.png',
                      width: 200,
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Image.asset(
                      'images/logo-cnn.png',
                      width: 200,
                      height: 80,
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Image.asset(
                      'images/logo-kompas.png',
                      width: 200,
                    ),
                  )
                ],
              )*/
            ],
          ),
        ),
      ),
    );
  }

  Widget _urlDetik(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-detik.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  Widget _urlCNN(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.transparent,
      child: FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0),
          side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Image.asset(
          'images/logo-cnn.png',
          width: 200,
          height: 80,
        ),
        onPressed: () => _handleURLButtonPress(context, url),
      ),
    );
  }

  Widget _urlSindonews(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-sindonews.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  Widget _urlLiputan6(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-liputan6.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  Widget _urlJpnn(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-jpnn.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  Widget _urlJawapos(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-jawapos.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  Widget _urlMerdeka(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-merdeka.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  Widget _urlKapanlagi(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
            side: BorderSide(color: Color.fromRGBO(255, 151, 55, 1), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Image.asset(
            'images/logo-kapanlagi.png',
            width: 200,
            height: 80,
          ),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
