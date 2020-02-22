import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SizeInputField(final String typeOfInput, TextEditingController textController) {
  return new Column(
    children: <Widget>[
      new Container(
        margin: const EdgeInsets.all(4.0),
        child: new Text(
            typeOfInput,
            style: new TextStyle(fontSize: 18),
        ),
      ),
      createInputTextField(typeOfInput, textController),
    ],
  );


  return createInputTextField(typeOfInput, textController);
}

Widget createInputTextField(String typeOfInput, TextEditingController textController) {
  return new Row(
    children: <Widget>[
      Flexible(
        child: new Container(
            margin: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(border: Border.all()),
            child: new TextField(
              controller: textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(
              hintText: "AAA"),
            )
          )
        ),
    ],
  );
}

void _handleSubmitted(String inputField) {
  //Do something

  return;
}