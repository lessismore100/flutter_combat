import 'package:flutter/material.dart';

import 'model/post.dart';
import 'pages/PictureBook.dart';
import 'pages/e_card.dart';
import 'pages/qr_code.dart';

//void main(){
//  runApp(
//    App()
//  );
//}
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        
      ),
    );
  }

} 

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
            icon: ImageIcon(AssetImage('images/img_qrcode.png')),
            tooltip: 'navigation',
            onPressed:(){
              Navigator.push(context, new MaterialPageRoute(
                // builder: (context) => new ListViewPictureBook()),
                builder: (context) => new ECardApp()),
                );
            } ,
          )
          ],
          elevation: 10,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.contacts)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.chat)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.contacts,size: 128.0,color: Colors.black12),
            Icon(Icons.change_history,size: 128.0,color: Colors.black12),
            Icon(Icons.chat,size: 128.0,color: Colors.black12)
          ],
        ),
        drawer: Container(
          color: Colors.white12,
          padding: EdgeInsets.fromLTRB(0,0,8.0,0),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('steve'),
                  accountEmail: Text('steve@126.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('http://static.ettoday.net/images/254/d254785.jpg'),
                  ),

                  onDetailsPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      // builder: (context) => new ListViewPictureBook()),
                        builder: (context) => new initQR()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Message',textAlign:TextAlign.right),
                  trailing: Icon(Icons.message,color:Colors.black12,size:22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite',textAlign:TextAlign.right),
                  trailing: Icon(Icons.favorite,color:Colors.black12,size:22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Settings',textAlign:TextAlign.right),
                  trailing: Icon(Icons.settings,color:Colors.black12,size:22.0),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),//ListViewPictureBook()
      ),
    );
  }
}