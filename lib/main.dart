import 'package:dart_basics/classes/classes_example.dart';
import 'package:dart_basics/control_flow/control_flow_example.dart';
import 'package:dart_basics/error_handling/error_handel_example.dart';
import 'package:dart_basics/functions_basics/functions_example.dart';
import 'package:dart_basics/syntax_basics/operators_example.dart';
import 'package:dart_basics/syntax_basics/variables_example.dart';
import 'package:dart_basics/types_basics/types_example.dart';
import 'package:flutter/material.dart';

/// Dart basics Example
/// for more information please visit
/// https://dart.dev/language

void main() async{
  /// we commented this line because this line makes flutter uses it's engin
  /// to draw the application screens over the main native screen and we don't
  /// want this for trying the Dart Basics.

  // runApp(const MyApp());
  debugPrint("******************** Dart Basics Example ********************");

  /// variables example
  // VariablesExample variablesExample = VariablesExample(constant: 150);
  // variablesExample.testVariablesExamples();

  /// Operators example
  // OperatorExample operatorExample = OperatorExample();
  // operatorExample.testOperators();

  /// Types example
  // TypesExample typesExample = TypesExample<String>();
  // typesExample.testTypesExample();

  /// Functions Example
  // FunctionsExample functionsExample = FunctionsExample();
  // functionsExample.greeting();
  // functionsExample.positionalParams("Hello", "World");
  // functionsExample.optionalPositionalParams("Hello");
  // functionsExample.namedParams(msg: "Hello");
  // functionsExample.mixedParams(
  //   "positionalMessage",
  //   msg: "Hello",
  //   thirdMessage: "Third",
  // );
  // functionsExample.passingFunctionsAsParams(
  //   onSuccess: (stringValur) {
  //     debugPrint("the success message ---> $stringValur");
  //   },
  //   onFailure: () {
  //     debugPrint("Failure");
  //   },
  // );
  // String value = await functionsExample.asyncFunction(seconds: 2);
  // Future<String> futureValue = functionsExample.asyncFunction(seconds: 2);
  // functionsExample.asynchronousNaturalsTo(10).forEach((element) {
  //   debugPrint("the item is ---> $element");
  // });

  /// Control Flow Example
  // ControlFlowExample controlFlowExample = ControlFlowExample();
  // controlFlowExample.forLoopExample();
  // controlFlowExample.doWhileExample(numberOfCycles: 0);
  // controlFlowExample.whileExample(numberOfCycles: 0);
  // controlFlowExample.ifElseExample(value: 51);
  // controlFlowExample.switchExample(number: 39);

  /// Error Handling Example
  // ErrorHandelExample errorHandelExample = ErrorHandelExample();
  // errorHandelExample.errorHandlingExample(value: "1000");

  CustomPoint.fromJson({});

}
