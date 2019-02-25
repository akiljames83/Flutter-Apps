import 'package:flutter/material.dart';

main() {
  // Render the widget
  runApp(MyApp());
}

// Defining a widget; inherits from a base class from flutter sdk
class MyApp extends StatelessWidget {
  // Defining the build method 
  build(context) {
    /* 
    * MaterialApp: Core root widget!
    * Scaffold: Blank Page
    * AppBar: Application bar at the top of the screen
    * Text: takes text as an argument so that it canbe displayed
    */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList')
          ),
        ),
      );
  }
}