import 'package:flutter/cupertino.dart';
import 'classes_example.dart';

/// for more information please visit
/// https://dart.dev/language/mixins

mixin GreetingMixin {
  void introduction({required String name}){
    debugPrint("Hello, This is $name");
  }
}

// to use this mixin the class should
// extend (CustomPoint) and with (PointManagerMixin)
mixin PointManagerMixin on CustomPoint {
  calculateOrigin() {
    debugPrint("Origin Calculated! x = ${super.x} & y = ${super.y}");
  }
}