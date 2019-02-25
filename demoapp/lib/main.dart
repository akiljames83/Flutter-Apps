import 'package:flutter/material.dart';

// Render the widget
// Following is format for one line functions
void main() => runApp(MyApp());

// Defining a widget; inherits from a base class from flutter sdk
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [
    'Food Tester',
  ];

  @override // overides method built into the widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('EasyList')),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('Advanced Food Tester');
                }); 
            }, 
            child: Text('Add Product')),
          ),
          Column(
              children: _products
                  .map((element) => Card(
                          child: Column(children: <Widget>[
                        Image.asset('assets/apple.png'),
                        Text(element)
                      ])))
                  .toList()),
        ]),
      ),
    );
  }
}
