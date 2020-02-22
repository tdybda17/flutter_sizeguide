import 'package:flutter_sizeguide/backend/models/company.dart';
import 'package:flutter_sizeguide/backend/models/result.dart';

class ResultService {
  List<Result> all() {
    return [
      Result(
        size: '30',
        types: ['hej'],
        companies: [Company(name: 'name', imageUrl: 'https://www.dk/')]
      )
    ];
  }
}