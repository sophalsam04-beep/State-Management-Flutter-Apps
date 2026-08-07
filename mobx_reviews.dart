import 'package:demo8/Mobx/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MobxDemo(),
      );
  }
}


class MobxDemo extends StatefulWidget {
  const MobxDemo({super.key});

  @override
  State<MobxDemo> createState() => _MobxDemoState();
}

class _MobxDemoState extends State<MobxDemo> {
  @override
  Widget build(BuildContext context) {
      // call into mobx
      final data = CounterStore();
      return Scaffold(
        appBar: AppBar(
          title: Text("Review Mobx"),
        ),

        body: Center(
          child: Observer(
            builder: (_)=>Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("COUNTER: ${data.count}",style: TextStyle(fontSize: 22),)
              ],
            ),
          ),
        )
          ,
          floatingActionButton: FloatingActionButton(onPressed: (){
            data.increment()
;          }, child: Icon(Icons.dangerous),),
      );
  }
}
