import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewPictureBook extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        SizedBox(height: 6.0),
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
        SizedBox(height: 6.0)
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text('books'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
    );
  }
}
