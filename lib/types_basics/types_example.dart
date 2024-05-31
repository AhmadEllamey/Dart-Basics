import 'package:flutter/material.dart';

/// for more information please visit
/// https://dart.dev/language/built-in-types



// we are using here typedef
typedef StringList = List<String>;
/// the previous line means that is the user use the type (StringList)
/// it's the same if he uses (List<String>)

// we used generics to know the T value
class TypesExample<T>{

  /// some built-in types

  /// for numbers
  int? integerValue;
  double? doubleValue;

  /// for chars
  String? stringValue;

  /// for logics
  bool? booleanValue;

  /// other data types

  /// we use dynamic here but we should use a specific type
  // Lists (List, also known as arrays)
  List<T>? dynamicList;
  StringList? stringList;

  // Maps as key and value
  Map<String, T>? dynamicMap;

  // Sets in Dart is an unordered collection of unique items
  Set<T>? dynamicSet;

  void testTypesExample(){
    integerValue = 100;
    doubleValue = 12.5;
    stringValue = "Hello";
    booleanValue = true;
    dynamicList = <T>["First Item" as T,"Second Item" as T];
    stringList = <String>["First Item", "Second Item"];
    dynamicMap = {
      "1" : "100" as T,
      "2" : "200" as T,
    };
    dynamicSet = {"First" as T,"Second" as T,};
    debugPrint("the integerValue ---> $integerValue");
    debugPrint("the doubleValue ---> $doubleValue");
    debugPrint("the stringValue ---> $stringValue");
    debugPrint("the booleanValue ---> $booleanValue");
    debugPrint("the T list ---> $dynamicList");
    debugPrint("the T map ---> $dynamicMap");
    debugPrint("the T set ---> $dynamicSet");
    debugPrint("the typeOf List ---> $stringList");
  }

}