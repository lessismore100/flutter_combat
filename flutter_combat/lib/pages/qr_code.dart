import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '生成二维码',
      home: initQR(),
    );
  }

}

class initQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
         child: QrImage(
             data: 'studentCode=BJ1997001',
           size: 256.0,
             onError: (ex){
               print('[QR] ERROR - $ex');
             },
         ),
      ),
    );
  }
}