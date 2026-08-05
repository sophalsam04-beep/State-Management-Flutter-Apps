import 'package:demo_2/Bloc/counter_bloc.dart';
import 'package:demo_2/Bloc/counter_event.dart';
import 'package:demo_2/Bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main()=> runApp(
    BlocProvider(
      create: (_)=> CounterBloc(),
      child: MyApp(),
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BlocScreen(),
        );
  }
}


class BlocScreen extends StatefulWidget {
  const BlocScreen({super.key});

  @override
  State<BlocScreen> createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Global State with Bloc", style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold),),
          ),
          
          body: BlocBuilder<CounterBloc, CounterState>(

            // Read State -> Rebuild state
              builder: (context, state) {
                    return Center(
                      child: Text("${state.counter}", style: TextStyle(fontSize: 40,color: Colors.red),),
                    );
              },

          ),

          // Navigation bar
          // Update State



      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              // bloc updated
              context.read<CounterBloc>().add(
                  IncrementCounter()
              );

            },
            child: Icon(Icons.plus_one),

          ),
          FloatingActionButton(
            onPressed: (){
              // bloc updated
              context.read<CounterBloc>().add(DecrementCounter());

            },
            child: Icon(Icons.format_indent_decrease),

          ),
        ],
      ),
        );

  }
}
