import 'dart:math';
import 'package:flutter/material.dart';

/// for more information please visit
/// https://dart.dev/language/functions

class FunctionsExample {
  String greeting() => "Hello Functions";

  void positionalParams(String msg, String secondMsg) {
    debugPrint("the message ---> $msg, the second message ---> $secondMsg");
  }

  void optionalPositionalParams(String msg, [String? secondMsg]) {
    debugPrint("the message ---> $msg, the second message ---> $secondMsg");
  }

  void namedParams(
      {required String msg,
      String? secondMessage,
      String thirdMessage = "Empty"}) {
    debugPrint(
      "the message ---> $msg,"
      " the second message ---> $secondMessage,"
      " the third message ---> $thirdMessage",
    );
  }

  void mixedParams(String positionalMessage,
      {required String msg,
      String? secondMessage,
      String thirdMessage = "Empty"}) {
    debugPrint(
      "the positional message ---> $positionalMessage,"
      " the message ---> $msg,"
      " the second message ---> $secondMessage,"
      " the third message ---> $thirdMessage",
    );
  }

  void passingFunctionsAsParams({
    required Function(String) onSuccess,
    required Function onFailure,
  }) {
    if(Random().nextBool()){
      onSuccess("Success Message");
    }else{
      onFailure();
    }
  }

  /// Future in Flutter refers to an object that represents a value
  /// that is not yet available but will be at some point in the future.
  /// A Future can be used to represent an asynchronous operation
  /// that is being performed, such as fetching data from a web API,
  /// reading from a file, or performing a computation.
  /// A Future in Flutter is typically used in combination with
  /// the “async” and “await” keywords to perform asynchronous
  /// operations in a non-blocking way.
  /// Here’s an example of how you might use a Future
  /// in Flutter to fetch data from a web API.
  Future<String> asyncFunction({required int seconds}) async{
    debugPrint("The Counter Started");
    // try to remove the await and see the result
    await Future.delayed(Duration(seconds: seconds,),);
    return "$seconds Seconds Passed";
  }

  Stream<int> asynchronousNaturalsTo(int n) async* {
    int k = 0;
    while (k < n) {
      await Future.delayed(const Duration(seconds: 1));
      yield k++;
    }
  }

  Iterable<int> naturalsDownFrom(int n) sync* {
    if (n > 0) {
      yield n;
      yield* naturalsDownFrom(n - 1);
    }
  }

}
