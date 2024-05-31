import 'package:flutter/material.dart';

/// for more information please visit
/// https://dart.dev/language/error-handling

class ErrorHandelExample{

  void errorHandlingExample({required dynamic value}){
    try {
      String msg = value;
      debugPrint("The Message is $msg");
    } on TypeError{
      debugPrint('Error: Type Error');
    } catch (e) {
      debugPrint('Error: $e'); // Handle the exception first.
    } finally {
      debugPrint("This step will executed whatever happens");
    }
  }


}