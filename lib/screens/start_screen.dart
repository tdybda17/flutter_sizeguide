
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final String _title;

  StartScreen(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(_title),
        ),
        body: Center(),
    );
  }
}