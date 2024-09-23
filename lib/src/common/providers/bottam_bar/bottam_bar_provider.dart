import 'package:flutter/cupertino.dart';

class BottamBarProvider extends ChangeNotifier{
  int _selectIndex = 0;
  int get selectIndex => _selectIndex;

  onTap(int index){
    _selectIndex = index;
    notifyListeners();
  }
}