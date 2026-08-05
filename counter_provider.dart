import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterModel extends ChangeNotifier{
      // store data
    int _count = 0;

    int get count => _count;

    void increment(){
        _count++;
        notifyListeners();   // notifier all listener to rebuild
    }

    void decrement(){
        _count--;
        notifyListeners();
    }

    void reset(){
        _count = 0;
        notifyListeners();
    }






}
