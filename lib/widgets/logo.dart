import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/logo.jpeg"),
          fit: BoxFit.contain,
        ),
        shape: BoxShape.circle,
      ),
      width: 200.0,
      height: 150.0,
    );
  }
}
