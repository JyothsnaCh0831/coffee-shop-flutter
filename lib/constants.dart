import 'package:flutter/material.dart';

// Onboarding Screen
const kBigSizedBox = SizedBox(
  height: 350,
);

const kSizedBox = SizedBox(
  height: 80.0,
);

const kCenterTextStyle = TextStyle(
  color: Colors.brown,
  fontSize: 22.0,
  fontFamily: 'Pacifico',
);

const kTitleStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w700,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
);

// Elevated Button
const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
);

// Price text style
const kPriceTextStyle = TextStyle(
  color: Colors.pinkAccent,
  fontSize: 18.0,
  fontFamily: 'Pacifico',
);

// Rating stars
const kRatingStars = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(
      Icons.star,
      color: Colors.orangeAccent,
    ),
    Icon(
      Icons.star,
      color: Colors.orangeAccent,
    ),
    Icon(
      Icons.star,
      color: Colors.orangeAccent,
    ),
    Icon(
      Icons.star,
      color: Colors.orangeAccent,
    ),
    Icon(
      Icons.star_half,
      color: Colors.orangeAccent,
    ),
  ],
);
