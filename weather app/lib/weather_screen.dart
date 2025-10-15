import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather app',
          style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],
      ),
      body: Column(
        children: [
          //main card
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child:  Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                child: BackdropFilter(
                  filter: ,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text('300 F', style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),),
                        Icon(Icons.cloud,
                        size: 48,),
                        Text('Rain', style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          //weather forecast card
          const Placeholder(
            fallbackHeight: 150,
          ),
          const SizedBox(height: 30,),
          // additional info
          const Placeholder(
            fallbackHeight: 150,
          ),
        ],
      ),
    );
  }

}
