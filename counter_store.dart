
import 'package:mobx/mobx.dart';

    // using to headle file part '';
part 'counter_store.g.dart';
class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store{
      // obseverable
    // state or data follow observer
    @observable
    int count = 0;

    // action()  is function make update with observerable

    @action
      void increment(){
        count++;
    }

    @action
      void decrement(){
        count--;
    }

    // computed -> caculate variable from observrable
  @computed
    bool get isEven => count % 2 ==0;




}
