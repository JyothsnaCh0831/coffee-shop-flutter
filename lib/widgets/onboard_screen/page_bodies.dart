import 'package:coffee_shop/constants.dart';
import 'package:flutter/material.dart';

class PageBodyContainer extends StatelessWidget {
  PageBodyContainer(
      {super.key,
      required this.centerText,
      required this.title,
      required this.subText});

  String centerText;
  String title;
  String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: <Widget>[
          kBigSizedBox,
          Text(
            centerText,
            textAlign: TextAlign.center,
            style: kCenterTextStyle,
          ),
          kSizedBox,
          Text(
            title,
            style: kTitleStyle,
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            subText,
            style: kSubTextStyle,
          ),
        ],
      ),
    );
  }
}
