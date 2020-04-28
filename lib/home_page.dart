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
              "Welcome to",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30.0, fontFamily: "Comfortaa"),
            ),
            AppImageWidget(),
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
          ],
        ),
      ),
      appBar: AppBar(title: Text(_title),),
    );
  }
}

class AppImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage logoAsset = AssetImage('images/SeniorProjectAppImage.png');
    Image image = Image(image: logoAsset, width: 400.0, height: 400.0,);
    return Container(child: image);
  }
}

Future navigateToHelpPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage()));
}

Future navigateToGeneralQuestions(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralQuestions()));
}