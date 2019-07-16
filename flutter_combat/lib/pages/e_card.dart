import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(new ECardApp());

class ECardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'ecard',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new HomeWidget(),
    );
  }
  
}

class HomeWidget extends StatelessWidget {
  WebViewController _controller;
  String _title;
  var currtime = DateTime.fromMillisecondsSinceEpoch(DateTime.now().millisecondsSinceEpoch);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('e-card'),

      ),
      body: new WebView(
        initialUrl: 'http://www.baidu.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          _controller = controller;
        },
        onPageFinished: (url){
          _controller.evaluateJavascript('document.title').then((result){
            // setState((){
            //   _title = result;
            // });
          });
          debugPrint('load finish.$currtime');
           Fluttertoast.showToast(
             msg: 'load finish.$currtime',
             toastLength: Toast.LENGTH_LONG,
             gravity: ToastGravity.CENTER,
//             timeInSecForIos: 1,
//             backgroundColor: Colors.black,
             textColor: Colors.white
           );
        },
      ),
    );
  }

}