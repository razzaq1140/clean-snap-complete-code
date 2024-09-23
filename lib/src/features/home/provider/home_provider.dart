import 'dart:async';

import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier{
  int _countDown = 30;
  int get countDown => _countDown;

  Timer? _timer;
  void startCount(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      if(_countDown > 0){
        _countDown--;
        notifyListeners();
      }
      else{
        timer.cancel();
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
