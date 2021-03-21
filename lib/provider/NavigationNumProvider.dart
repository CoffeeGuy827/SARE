
import 'package:flutter/material.dart';
class NavigationNumProvider extends ChangeNotifier{
  int pastNum = 0;
  int _num = 0;

  int getNum() => _num;
  int getPastNum() => pastNum;
  void setNum(int num){
    setPastNum(_num );
    _num = num;

    notifyListeners();
  }

  void setPastNum(int num){
    pastNum = _num;
    notifyListeners();
  }
}

