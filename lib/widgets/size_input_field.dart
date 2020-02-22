import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SizeInputField(final String typeOfInput, TextEditingController textController) {
  return new Column(
    children: <Widget>[
      new Container(
        margin: const EdgeInsets.only(bottom: 1, top: 1),
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
            margin: const EdgeInsets.all(5.0),
            decoration: new BoxDecoration(border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new TextField(
                controller: textController,
                decoration: InputDecoration.collapsed(
                ),
              ),
            )
          )
        ),
    ],
  );
}
