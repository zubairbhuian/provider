import 'package:flutter/cupertino.dart';

class DemoData extends ChangeNotifier {
  var _count = 0;
  get count => _count;
  incriment() {
    _count++;
    notifyListeners();
  }
}
