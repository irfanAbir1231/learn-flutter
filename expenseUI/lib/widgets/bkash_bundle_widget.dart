import 'package:flutter/material.dart';

class BkashBundleWidget extends StatelessWidget {
  const BkashBundleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        child: Placeholder(
          color: Colors.purple,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
