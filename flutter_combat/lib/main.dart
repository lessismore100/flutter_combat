import 'package:flutter/material.dart';

import 'model/post.dart';

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
        primarySwatch: Colors.yellow
      ),
    );
  }

} 

class Home extends StatelessWidget {

Widget _listItemBuilder(BuildContext context,int index){
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Image.network(posts[index].imgUrl),
        SizedBox(height: 16.0),
        Text(
          posts[index].title,
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          posts[index].author,
          style: Theme.of(context).textTheme.subtitle,
        ),
        SizedBox(height: 16.0)
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('combat'),
          elevation: 10,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      );
  }
}