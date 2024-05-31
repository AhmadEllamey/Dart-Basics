import 'package:flutter/material.dart';

/// for more information please visit
/// https://dart.dev/language/loops
/// https://dart.dev/language/branches

class ControlFlowExample {
  /// you can use break and continue

  void forLoopExample() {
    /// if you have a list you can use (forEach) function
    /// or you can use the enhanced for loop
    for (int i = 0; i < 10; i++) {
      debugPrint("the iterate number ---> $i");
    }
  }

  void doWhileExample({required int numberOfCycles}) {
    do {
      debugPrint("the iterate number ---> $numberOfCycles");
      numberOfCycles--;
    } while (numberOfCycles > 0);
  }

  void whileExample({required int numberOfCycles}) {
    while (numberOfCycles > 0) {
      debugPrint("the iterate number ---> $numberOfCycles");
      numberOfCycles--;
    }
  }

  void switchExample({required int number}){
    switch (number){
      case 1 : {
        debugPrint("The value is $number");
      }
      case 2 : {
        debugPrint("The value is $number");
      }
      case 3 : {
        debugPrint("The value is $number");
      }
      default : {
        debugPrint("Value Not Recorded");
      }
    }
  }

  void ifElseExample({required int value}){
    if(value > 50){
      debugPrint("Passed the exam");
    }else{
      debugPrint("Failed the exam");
    }
  }


}
