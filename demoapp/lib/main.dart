import 'package:flutter/material.dart';

import './product_manager.dart';

// Render the widget
// Following is format for one line functions
void main() => runApp(MyApp());

// Defining a widget; inherits from a base class from flutter sdk
class MyApp extends StatelessWidget {
  @override // overides method built into the widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('EasyList')), 
          body: ProductManager('Food Tester'),
        ),
    );
  }
}
