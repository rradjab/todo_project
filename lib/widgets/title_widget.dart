import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'TODO Application',
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.green,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 35.0),
    );
  }
}
