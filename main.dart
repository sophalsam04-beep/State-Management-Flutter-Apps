// Local State in flutter

import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterWidget(),
      );
  }
}



class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
      // This is a Local state
    int _counter = 0;

    void incrementCounter(){

      // ប្រើsetState ដើម្បីប្រាប់UI អោយទៅUpdate កើន
        setState(() {
            _counter++;
        });
    }

    void decrementCounter(){
        // ប្រើ setState ដើម្បីប្រាប់ UI អោយទៅ Update ថយ
        setState(() {
            _counter--;
        });
    }




  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Local State", style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),


            ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text("Counter Increment : $_counter",style: TextStyle(fontSize: 28,color: Colors.red)),

                // Increment
                ElevatedButton(
                    onPressed: incrementCounter,
                    child: Text("+")),

                // Decrement
                ElevatedButton(
                    onPressed: decrementCounter,
                    child: Text("-")),



              ],
            ),
          )


        );
  }
}
