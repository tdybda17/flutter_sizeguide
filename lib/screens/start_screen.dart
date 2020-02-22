
import 'package:flutter/material.dart';
import 'package:flutter_sizeguide/backend/costumer_info.dart';
import 'package:flutter_sizeguide/widgets/size_input_field.dart';

class StartScreen extends StatelessWidget {
  final String _title;
  TextEditingController heightTextController = new TextEditingController();
  CustomerInfo _customerInfo;

  StartScreen(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_title),
        ),
        body: Center(
          child: new Column(
            children: <Widget>[
              SizeInputField('Height', heightTextController)
            ],
          ),
        ),
    );
  }
}