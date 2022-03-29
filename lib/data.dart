import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier{
  int value = 0;
  Incriment() {
    value++;
  }
}
