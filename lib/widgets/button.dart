import 'package:coffee_shop/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressCallBack});

  final String buttonText;
  final Function() onPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressCallBack,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.brown,
        padding: const EdgeInsets.all(10.0),
      ),
      child: Text(
        buttonText,
        style: kButtonTextStyle,
      ),
    );
  }
}
