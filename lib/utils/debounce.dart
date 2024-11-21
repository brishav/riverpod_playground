import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod_playground/globals.dart';

class Debounce {
  final int milliseconds;
  Timer? _timer;

  Debounce({this.milliseconds = debounceTime});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
