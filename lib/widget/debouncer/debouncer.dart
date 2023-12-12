import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  final int? milliseconds;
  Debouncer({required this.milliseconds});
  VoidCallback? action;
  Timer? _timer;
  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}
