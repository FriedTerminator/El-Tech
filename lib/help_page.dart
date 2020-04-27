import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HelpPageScreen(title: "Help Page"),
    );
  }
}

class HelpPageScreen extends StatelessWidget {
  final String _pageTitle;

  HelpPageScreen({String title}): _pageTitle = title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitle),),
    );
  }
}