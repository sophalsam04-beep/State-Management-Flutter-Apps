
import 'dart:ffi';

import 'package:demo7/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


    void main(){
      runApp(
        // wrap the app
        ProviderScope(
          child: MyApp(),
        )
      );
    }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ReviewRiverpod(),
      );
  }
}



class ReviewRiverpod extends ConsumerWidget {
  const ReviewRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

      final count = ref.watch(counter);
      final name = ref.watch(nameController);
      final age = ref.watch(ageController);
      // used call FutureProvider
      final data = ref.watch(userProvider).when(
          data: (value)=> Text(value),
          error: (e,s)=> Text("Message error!"),
          loading: ()=> const CircularProgressIndicator(),
      );

      // call StateNotiferProvider
      final state = ref.watch(counterProvider);

      return Scaffold(
        appBar: AppBar(
          title: Text("Review Riverpod"),
        ),

        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Center(
                    child: Text("Counter value : ${count}"),
                  )
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(ref.watch(nameController)),
                  )
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text("age : ${age}")
                  ],
                ),
              ),


              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text("StateNotifierProvider : ${state}")
                  ],
                ),
              )
            ],
          ),
        ),

        // Update age
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){
                // Update age
                ref.read(ageController.notifier).state++;
              },
              child: Icon(Icons.update),
            ),
            FloatingActionButton(
              onPressed: (){
                // Update age
                ref.read(ageController.notifier).state--;
              },
              child: Icon(Icons.subdirectory_arrow_left),
            ),
            
            FloatingActionButton(
              onPressed: (){
                  // used future provider

              },
              child: Icon(Icons.grade),
            ),
            
            FloatingActionButton(onPressed: (){
              
              // call StateNotifierProvider
              // original state
              ref.read(counterProvider.notifier).increment();
            }, child: Icon(Icons.free_breakfast),)
            
            
          ],
        )
      );
  }
}

