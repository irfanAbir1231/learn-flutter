import 'package:flutter/material.dart';

class OtherServicesWidget extends StatelessWidget {
  const OtherServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Placeholder(
          color: Colors.green,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
