import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _mainText = 'The first flutter assignment.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        brightness: Brightness.dark
      ),
      home:Scaffold(
        appBar: AppBar(
          title:Text('Text App'),
        ),
        body: Column(
          children: [
            Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                 _mainText = 'Got changed!'; 
                });
              },
              child:Text('Change Text!')
            )),
            Text(_mainText)
            ]
        ),
      )
    );
  }
}