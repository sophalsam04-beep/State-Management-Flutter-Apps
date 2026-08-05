import 'package:demo_3/Model/counter_model.dart';
import 'package:flutter_provider/flutter_provider.dart' hide Consumer;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(
  ChangeNotifierProvider(
    create: (context)=> CounterModel(),
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
          home: ProviderScreen(),
        );
  }
}

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CounterScreen(),
        );
  }
}


class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider", style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
      ),
      
      body: Center(
        child: Consumer<CounterModel>(
            builder: (context, counter, child) {
                  return Text("${counter.count}", style: TextStyle(fontSize: 45,color: Colors.red),);
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterModel>().increment();
        },
        child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
      ),
    );
  }
}
