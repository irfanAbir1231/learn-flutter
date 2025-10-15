import 'package:flutter/material.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 140,
        child: Placeholder(
          color: Colors.blue,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
