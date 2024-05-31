import 'package:flutter/material.dart';

/// for more operators please visit
/// https://dart.dev/language/operators

class OperatorExample {
  int a = 100;
  int b = 500;
  bool c = true;
  int? x;

  void testOperators() {
    debugPrint("a = $a \nb = $b\nc = $c\nx = $x\n-------------");

    debugPrint("a++ ---> ${a++}");
    debugPrint("a + b ---> ${a + b}");
    debugPrint("a == b ---> ${a == b}");
    a = b;
    debugPrint("After a = b ---> a = $a");
    debugPrint("a == b ---> ${a == b}");
    debugPrint("c ? a : b ---> the answer will be ${c ? a : b}");
    debugPrint("a is String ---> ${a is String}");
    debugPrint("a is! String ---> ${a is! String}");
    debugPrint("a as double ---> ${a as String}"); // Casting
    debugPrint(
        "(a != -100) || ((a == 300) && (b <= 300)) ---> ${(a != -100) || ((a == 300) && (b <= 300))}");

    debugPrint("x?.isOdd ---> ${x?.isOdd}");
    debugPrint("x!.isOdd ---> ${x!.bitLength}");
    x ??= 250; // if x = null then assign it to this value

  }
}
