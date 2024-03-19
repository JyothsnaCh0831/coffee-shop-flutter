import 'package:flutter/material.dart';

class OnBoardScreenImage extends StatelessWidget {
  OnBoardScreenImage({super.key, required this.image});

  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 35.0),
      child: CircleAvatar(
        radius: 135.0,
        backgroundImage: AssetImage('images/onboard/$image.jpeg'),
      ),
    );
  }
}
