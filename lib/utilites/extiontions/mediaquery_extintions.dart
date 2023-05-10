import 'package:flutter/material.dart';

extension MediaQueryHelper on BuildContext {
  /// (this) refer to = context
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

///code responsive => context.screenHeight/number,
}





///extension for Navigator -- code => context.push(const widget name());
extension NavigatorHelper on BuildContext {
  void push(Widget widget) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => widget));
  }
}
