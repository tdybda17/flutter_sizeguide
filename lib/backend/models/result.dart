import 'package:flutter_sizeguide/backend/models/company.dart';
import 'package:meta/meta.dart';

class Result {
  final String size;
  final List<String> types;
  final List<Company> companies;

  Result({
    @required this.size,
    @required this.types,
    @required this.companies
  });

  factory Result.fromJson(Map<Future<String>, dynamic> json) {
    var types = [];
    for(int i = 0; i < json['types'].length; i++) {
      types.add(json['types'][i]);
    }
    var companies = [];
    for(int i = 0; i < json['companies'].length; i++) {
      companies.add(Company(
        name: json['companies'][i][0],
        imageUrl: json['companies'][i][1],
      ));
    }
    return Result(
      size: json['size'],
      types: types,
      companies: companies,
    );
  }

}