import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: 45.0,
        color: Colors.brown.shade600,
      ),
    );
  }
}
