import 'package:flutter/widgets.dart';

abstract class CustomController with ChangeNotifier {
  void update() {
    notifyListeners();
  }
}
