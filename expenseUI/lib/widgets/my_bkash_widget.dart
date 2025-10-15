import 'package:flutter/material.dart';

class MyBkashWidget extends StatelessWidget {
  const MyBkashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Placeholder(
          color: Colors.red,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
