import 'package:demo7/provider/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';



class Consumer extends ConsumerStatefulWidget {
  const Consumer({super.key, required builder});   // adding required parameter

  @override
  ConsumerState<Consumer> createState() => _ConsumerState();
}

class _ConsumerState extends ConsumerState<Consumer> {



  @override
  Widget build(BuildContext context) {
       return Scaffold(

         body: Consumer(
           builder: (context, ref, child) {
              return Text("Data : ${counter}");
           }
         )
       );
  }
}
