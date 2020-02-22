import 'package:flutter/material.dart';
import 'package:flutter_sizeguide/backend/models/result.dart';
import 'package:flutter_sizeguide/widgets/results/result_service.dart';

class ResultList extends StatelessWidget {

  final ValueChanged<Result> onTap;
  const ResultList({Key key, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resultService = ResultService();
    return ListView(
      children: <Widget>[
        ...resultService.all().map((result) => ListTile(
          onTap: () {
            if(onTap != null) {
              onTap(result);
            }
          },
          title: Text(result.size),
        ))
      ],
    );
  }

}