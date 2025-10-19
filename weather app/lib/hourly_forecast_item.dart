import 'package:flutter/material.dart';

class HourlyForeCastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String value;
  const HourlyForeCastItem({
    super.key,
    required this.icon,
    required this.value,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(time, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),),
            const SizedBox(height:8,),
            Icon(icon, size: 32,),
            const SizedBox(height:8,),
            Text(value, style: TextStyle(
              fontSize: 12,
            ),),

          ],
        ),
      ),
    );
  }
}
