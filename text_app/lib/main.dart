import 'package:flutter/material.dart';

import './text_control.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

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
        body: TextControl(),
      )
    );
  }
}