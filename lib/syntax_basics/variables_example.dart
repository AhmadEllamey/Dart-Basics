import 'package:flutter/material.dart';

/// for more info please visit
/// https://dart.dev/language/variables

class VariablesExample {
  VariablesExample({
    required this.constant,
    this.nullableConstant,
    this.name = "Default Name",
  });

  /// use var to define a variable (can not change data type after initializing)
  var variable = 100;

  /// dart uses null safety
  final int? nullableConstant;
  String? name; // this variable have a default value in the constructor

  /// Use final when you need variables that cannot be reassigned
  /// but can be computed at runtime.
  /// Use const for values that are known at compile
  /// time to enhance performance and ensure immutability
  // in class the const value must be static because it's already known
  // at the compilation time for all instances and con not changed.
  static const staticConstant = 200;

  final int constant;

  // The late modifier has two use cases:
  // 1 - Declaring a non-nullable variable that's initialized after its declaration.
  // 2 - Lazily initializing a variable.

  // If you fail to initialize a late variable,
  // a runtime error occurs when the variable is used.

  late int age;

  // When you mark a variable as late but initialize it at its declaration,
  // then the initializer runs the first time the variable is used.
  // This lazy initialization is handy in a couple of cases:
  // 1 - The variable might not be needed, and initializing it is costly.
  // 2 - You're initializing an instance variable, and its initializer needs access to this.
  late int agePlusTwo = age + 2;

  /// the dynamic value and how it works
  // it could hold any data type at any time
  dynamic dynamicValue;

  void testVariablesExamples() {
    dynamicValue = "hello";
    debugPrint("the dynamic value is ----> $dynamicValue");
    dynamicValue = 100;
    debugPrint("the dynamic value is ----> $dynamicValue");
  }
}
