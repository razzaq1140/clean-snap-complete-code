import 'package:flutter/cupertino.dart';

class SwitchProvider extends ChangeNotifier{
  bool _availability = true;
  bool _bNotification = true;
  bool _pNotification = true;
  bool _mNotification = true;
  bool _eNotification = true;

  bool get availability => _availability;
  bool get bNotification => _bNotification;
  bool get pNotification => _pNotification;
  bool get mNotification => _mNotification;
  bool get eNotification => _eNotification;


  availabilityChange(bool value){
    _availability = value;
    notifyListeners();
  }

  bNotificationChange(bool value){
    _bNotification = value;
    notifyListeners();
  }
  pNotificationChange(bool value){
    _pNotification = value;
    notifyListeners();
  }
  mNotificationChange(bool value){
    _mNotification = value;
    notifyListeners();
  }
  eNotificationChange(bool value){
    _eNotification = value;
    notifyListeners();
  }

}