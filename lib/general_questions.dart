import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: GeneralQuestionsScreen(title: "General Questions"),
    );
  }
}

class GeneralQuestionsScreen extends StatelessWidget {
  final String _pageTitle;

  GeneralQuestionsScreen({String title}): _pageTitle = title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitle),),
    );
  }
}