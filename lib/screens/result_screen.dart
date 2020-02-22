import 'package:flutter/material.dart';
import 'package:flutter_sizeguide/screens/page.dart';
import 'package:flutter_sizeguide/widgets/results/result_list.dart';

class ResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultater'),
      ),
      body: Page(
        onMobile: (BuildContext context) {
          return ResultList(
              onTap: (result) {
                Navigator.of(context).pop(result);
              }
          );
        },
      ),
    );
  }
}