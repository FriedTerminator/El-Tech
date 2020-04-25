import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      'Welcome to My App',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
        fontFamily: "Times New Roman"),));
  }
}

//class LogoImage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    AssetImage logoAsset =  AssetImage('images/SeniorProjectAppImage.png');
//    Image image = Image(image: logoAsset, width: 30.0, height: 30.0,);
//    return Container(child: image);
//  }
//}