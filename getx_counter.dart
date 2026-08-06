
import 'package:get/get.dart';


class CounterController extends GetxController{
    // .obs -> make a variable to reactive

      // Initiaze variable with Simple and Variable with GETX
  var counter = 0.obs;

    // simple variable
    int number = 0;

    // simple variable with GETX
    var age = 20.obs;

    bool isLoading = true;
    var isLoadings = true.obs;


    List student = [].obs;
    var students = <int>[].obs;
    var st = <String>[].obs;

    double price = 30.3;
    var salary = 302.4.obs;

    String firstname = "un virak";
    var firstnames = "un virak".obs;


    Map<String,dynamic> data = {};
    var array = <String,dynamic>{}.obs;


    void increment(){
        // increment
        counter++;
    }

    void decrement(){
        counter--;
    }




}
