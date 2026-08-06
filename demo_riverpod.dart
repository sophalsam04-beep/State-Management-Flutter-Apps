import 'package:demo6/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

    void main(){
        runApp(

          // Wrap the Apps
          ProviderScope(child: MyApp()),
        );
    }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RiverpodDemo(),
      );
  }
}



class RiverpodDemo extends StatefulWidget {
  const RiverpodDemo({super.key});

  @override
  State<RiverpodDemo> createState() => _RiverpodDemoState();
}

class _RiverpodDemoState extends State<RiverpodDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
