import 'package:flutter/cupertino.dart';

// class MyModel {
//   String text = "Hello";
//
//   void doSomething() {
//     text = "World";
//   }
// }

class MyModel with ChangeNotifier {
  String text = "Hello";

  void doSomething(String updateText) {
    text = updateText;
    notifyListeners();
  }
}
