import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newsapp/ProfilPage/kategori_page.dart';
import 'package:newsapp/ProfilPage/profil_page.dart';
import 'package:newsapp/ProfilPage/riwayatberita_page.dart';
import 'package:newsapp/RegisterPage/auth.dart';
import 'package:newsapp/generalnews_page.dart';
import 'package:newsapp/homenews_page.dart';
import 'package:newsapp/localnews_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  final String title;
  TabController tabController;
  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUser user;

  void initState() {
    initUser();
  }

  initUser() async {
    user = await auth.currentUser();
  }

  HomePage({Key key, this.title}) : super(key:key);
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('${user?.displayName}'),
              accountEmail: Text('${user?.email}'),
              currentAccountPicture: new Container(
                margin: EdgeInsets.all(10),
                width: 34,
                height: 34,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      image: AssetImage('images/profil.png'),
                      fit: BoxFit.cover
                  )
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_backup_restore),
              title: Text('Riwayat Berita'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RiwayatBeritaPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Kategori'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => KategoriPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
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
      body: new DefaultTabController(
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
          )),
    );
  }
}
