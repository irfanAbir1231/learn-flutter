import 'package:flutter/material.dart';

class SuggestionWidget extends StatelessWidget {
  const SuggestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Placeholder(
          color: Colors.teal,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
