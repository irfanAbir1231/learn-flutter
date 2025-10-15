import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'simple app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 100,
                height: 2000,
                color: Colors.red,
              ),

             Padding(
               padding: const EdgeInsets.only(top: 250, bottom: 250, left: 95, right: 95),
               child: Column(
                  children: [
                     Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                  ],
               ),
             ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 100,
              height: 2000,
              color: Colors.blue,
            ),
          ),
            ],
        ),
      ),
    );
  }
}

