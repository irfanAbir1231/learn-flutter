import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/provider1/counter_provider.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Provider'),
          ],
        )
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The value is now ${context.watch<CounterProvider>().count}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(onPressed: () {
                context.read<CounterProvider>().incrementCount();
              },
                child: Icon(Icons.add),),
              FloatingActionButton(onPressed: () {
                context.read<CounterProvider>().decrementCount();
              },
                child: Icon(Icons.remove),),
            ],
          ),
        ],
      ),
    );
  }
}
