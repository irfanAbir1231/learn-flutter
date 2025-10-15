import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: Placeholder(
          color: Colors.orange,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
