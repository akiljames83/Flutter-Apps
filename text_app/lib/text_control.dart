import 'package:flutter/material.dart';

import './text_out.dart';

class TextControl extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }

}

class _TextControlState extends State<TextControl> {
  String _mainText = 'The first flutter assignment.';

  @override
  Widget build(BuildContext context) {
    return Column(
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
            TextOut(mainText: _mainText)
            ]
        );
  }
}