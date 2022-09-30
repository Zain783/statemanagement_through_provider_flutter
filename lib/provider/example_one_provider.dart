import 'dart:developer';

import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {
  double _value = 0.5;
  double get value => _value;
  bool isChecked = false;
  void setValue({required double value}) {
    _value = value;
    notifyListeners();
  }

  void setisChanged({required ischange}) {
    isChecked = ischange;
    notifyListeners();
  }

  int _count = 0;
  int get count => _count;
  void increament() {
    _count++;
    notifyListeners();
  }
}
