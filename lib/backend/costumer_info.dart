import 'package:flutter/cupertino.dart';

class CustomerInfo {
  Gender gender;
  int height;
  int neckWidth;
  int chestWidth;
  int hipWidth;
  int waist;
  int footSize;

  CustomerInfo(
      {@required this.gender,
      @required this.height,
      this.neckWidth,
      this.chestWidth,
      this.hipWidth,
      this.waist,
      this.footSize});
}

enum Gender { male, female, junior }
