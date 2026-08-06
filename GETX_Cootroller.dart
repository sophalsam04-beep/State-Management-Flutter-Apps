      // GETX in FLutter

import 'package:demo5/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


    void main(){

        // using to Get.lazyPut() into configure the registers
        Get.lazyPut(()=> GetXState());

        runApp(
          GetMaterialApp(debugShowCheckedModeBanner: false,
            initialRoute: "/",
            getPages: [
                GetPage(name: "/", page: ()=> const GETXScreen()),
                GetPage(name: "/second", page: ()=> const SecondPage()),
                GetPage(name: "/about", page: ()=> const AboutPage()),
            ],
          )
        );
    }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GETXScreen(),
    );
  }
}


class GETXScreen extends StatefulWidget {
  const GETXScreen({super.key});

  @override
  State<GETXScreen> createState() => _GETXScreenState();
}

class _GETXScreenState extends State<GETXScreen> {

  // Register the controller
  // Create and store Dependency injection
  // Get.Put()

  final controller = Get.put(CounterController());

    // Get.find()
  final controllers = Get.find<CounterController>();

    // Get.lazyPut()
  final conts = Get.lazyPut(()=> CounterController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("bfesbre"),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text("Counter : ${controller.counter}",style: TextStyle(fontSize: 25),)
              ],
            ),
            Center(
              child: ElevatedButton(onPressed: (){
                /// Route management
                Get.to(()=> SecondPage());
              }, child: const Text("Go to new page")),
            ),

            Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){
                    // simple navigate
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondPage()));
                  }, child: Icon(Icons.book)),

                  //back to Original pages
                    ElevatedButton(onPressed: (){
                      // back to original pages
                      Navigator.pop(context);
                    }, child: Icon(Icons.back_hand)),

                  ElevatedButton(onPressed: (){
                    // back to original pages
                      Get.back(result: "success");
                  }, child: Icon(Icons.back_hand))
                  ,
                  ElevatedButton(onPressed: (){
                    Get.off(()=> Dashboard());
                  }, child: Text("Off")),

                  ElevatedButton(onPressed: (){
                    Get.offAll(()=> Logout());
                  }, child: Text("OffAll"))
                ],
              )
            ),


            

          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: Icon(Icons.format_indent_increase),
          ),
          FloatingActionButton(
            onPressed: controller.decrement,
            child: Icon(Icons.remove),
          ),



        ],
      ),

    );
  }
}



class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          color: Colors.green,
          child: Text("Welcome to New page"),
        ),
      )
    );
  }
}





class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
