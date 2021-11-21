import 'package:flutter/cupertino.dart';

class IncrementNotifier extends ChangeNotifier{
  int _value = 0;
  int get value => _value;

  void increment(){
    _value +=1;
    notifyListeners();
  }
}