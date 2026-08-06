import 'package:demo6/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

      // calling counterProvider into homescreen
    final counts = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Riverpods",),

      ),

      body: Center(
        child: Text("Counter : $counts", style: TextStyle(fontSize: 25),),
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            ref.read(counterProvider.notifier).state++;
          }, child: Icon(Icons.incomplete_circle),),
          FloatingActionButton(onPressed: (){
            ref.read(counterProvider.notifier).state--;
          }, child: Icon(Icons.incomplete_circle),),
        ],
      )
    );
  }
}
