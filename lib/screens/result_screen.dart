import 'package:flutter/material.dart';
import 'package:flutter_sizeguide/backend/costumer_info.dart';
import 'package:flutter_sizeguide/screens/page.dart';
import 'package:flutter_sizeguide/widgets/results/result_list.dart';

class ResultScreen extends StatelessWidget {
  final CustomerInfo _customerInfo; //TODO: USE THIS CUSTOMER INFO TO GET RESULTS

  ResultScreen(this._customerInfo);

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