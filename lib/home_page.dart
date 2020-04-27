import 'package:flutter/material.dart';
import 'help_page.dart';
import 'general_questions.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeScreen(title: "El & Tech"),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String _title;

  HomeScreen({String title}): _title = title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to $_title",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30.0, fontFamily: "Comfortaa"),
            ),
            RaisedButton(
              child: Text(
                "General Questions",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                navigateToGeneralQuestions(context);
              },
            ),
            RaisedButton(
              child: Text(
                "Help",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                navigateToHelpPage(context);
              },
            ),
//            HelpButton(),
          ],
        ),
      ),
      appBar: AppBar(title: Text(_title),),
    );
  }
}

Future navigateToHelpPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage()));
}

Future navigateToGeneralQuestions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralQuestions()));
}