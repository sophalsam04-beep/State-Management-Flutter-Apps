import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:demo7/screen/home_screen.dart';

  // create provider
    // int -> stateProvider
    final counter = StateProvider<int>((ref) {
        return 0;
    });

    // String -> Provider
  final nameController = Provider<String>((ref) {
      return "Un virak";
  });

 final ageController = StateProvider<int>((ref)=> 25);

  // FutureProvider -> fetch data
final userProvider = FutureProvider<String>((ref)async{
    await Future.delayed(const Duration(seconds: 200));

    return "Un virak";
});


      // StreamProvider
  // Realtime data
    final streamData = StreamProvider<int>((ref) async*{
          // using to While loop
          int i = 0;

          while(true){
              // fetch data
            await Future.delayed(const Duration(seconds: 200));

            yield i++;
          }
    });


    final stream = StreamProvider<int>((ref) async*{
        int j=0;

        while(true){
            await Future.delayed(const Duration(seconds: 300));
            yield j--;
        }


    });



    // State Notifier
// used for large project and medium project
  class CounterNotifier extends StateNotifier<int>{
        CounterNotifier() : super(0);

        void increment(){
            state++;
        }

        void decrement(){
            state--;
        }
  }




    // StateNotifierProvider
      // using to StateNotifierProvider -> call StateNotifier
    final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());
