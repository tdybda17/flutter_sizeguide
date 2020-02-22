import 'package:flutter/material.dart';
import 'package:flutter_sizeguide/screens/result_screen.dart';
import 'package:flutter_sizeguide/screens/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String _title = 'Indtast mål';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // #e56b2f
        primarySwatch: Colors.amber,
      ),
      home: ResultScreen(),
    );
  }
}
