import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        child: Placeholder(
          color: Colors.pink,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
