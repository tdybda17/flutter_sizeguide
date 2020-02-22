import 'package:flutter/widgets.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

typedef PageWidgetBuilder<T> = Widget Function(BuildContext context);

class Page<T> extends StatelessWidget {
  final PageWidgetBuilder<T> onMobile;
  final PageWidgetBuilder<T> onTablet;

  const Page({Key key, @required this.onMobile, this.onTablet})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (Device.get().isPhone) {
      return onMobile(context);
    } else {
      return onTablet(context);
    }
  }
}
