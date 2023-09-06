import 'dart:math';

import 'package:flutter/material.dart';

class Valuer with ChangeNotifier {
  final _rnd = Random();
  int _number = 0;

  int get number => _number;

  void getRandom() {
    _number = _rnd.nextInt(100);
    notifyListeners();
  }
}
