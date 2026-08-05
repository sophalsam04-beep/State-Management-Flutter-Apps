import 'package:demo_2/Bloc/counter_event.dart';
import 'package:demo_2/Bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterBloc extends Bloc<CounterEvent, CounterState>{
      CounterBloc(): super(CounterState(0)){
          on<IncrementCounter>((event, emit) {
                  emit(CounterState(state.counter+1));
          },);

          on<DecrementCounter>((event, emit) {
                emit(CounterState(state.counter-1));
          },);


      }


}