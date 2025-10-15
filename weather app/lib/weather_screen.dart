import 'dart:ui';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child:  Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
            ),
            const SizedBox(height:15,),
            const Text('Weather Forecast',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height:15,),

            SizedBox(
              width: 500,
              child: Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Text('3:00', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),),
                        const SizedBox(height:8,),
                        Icon(Icons.cloud, size: 32,),
                        const SizedBox(height:8,),
                        Text('3:00', style: TextStyle(
                          fontSize: 14,
                        ),),

                      ],
                    ),
                  )
                ],
              ),
            ),

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
      ),
    );
  }

}
