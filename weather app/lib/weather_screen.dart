import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'additional_info_item.dart';
import 'hourly_forecast_item.dart';
import 'secrets.dart';

import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
   double? temp;

  @override
  void initState() {
    super.initState();
    getCurrentWeather();
  }

  Future getCurrentWeather() async{
    try{
      String cityName = 'London';
      final res = await http.get(
        Uri.parse(
            'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$apiKey'),
      );
      final data = jsonDecode(res.body);
      if(data['cod'] != '200'){
        throw 'An unexpected Error occurred';
      }
      temp = data['list'][0]['main']['temp'];
      // print(data['list'][0]['main']['temp']);
    }
    catch (e){
      throw e.toString();
    }
  }

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
                            Text('$temp k', style: TextStyle(
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HourlyForeCastItem(
                      time: '0:00',
                      icon: Icons.cloud,
                      value: '320',
                    ),
                    HourlyForeCastItem(
                      time: '3:00',
                      icon: Icons.sunny,
                      value: '320',
                    ),
                    HourlyForeCastItem(
                      time: '6:00',
                      icon: Icons.cloud,
                      value: '320',
                    ),
                    HourlyForeCastItem(
                      time: '9:00',
                      icon: Icons.sunny,
                      value: '320',
                    ),
                    HourlyForeCastItem(
                      time: '12:00',
                      icon: Icons.cloud,
                      value: '320',
                    ),
                    HourlyForeCastItem(
                      time: '15:00',
                      icon: Icons.sunny,
                      value: '320',
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height:15,),
            const Text('Additional Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            const SizedBox(height:15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoCard(
                  icon: Icons.water_drop,
                  value: '32',
                  label: 'Humidity',
                ),
                AdditionalInfoCard(
                  icon: Icons.air,
                  value: '7.67',
                  label: 'Wind Speed',
                ),
                AdditionalInfoCard(
                  icon: Icons.beach_access,
                  value: '1006',
                  label: 'Pressure',
                ),
              ],
            )



          ],
        ),
      ),
    );
  }
}




