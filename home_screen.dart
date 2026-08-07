import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


  // AsyncNotifier Provider
    // large and API call

class HomeScreen extends AsyncNotifier<String>{
      @override
    Future<String> build() async{
          return "Sam";
      }
}
