import 'package:flutter/foundation.dart';

class CounterService {
  int counterValue = 0;

  addCounterValue() {
    counterValue++;
    if (kDebugMode) {
      print(counterValue.toString());
    }
  }
}
