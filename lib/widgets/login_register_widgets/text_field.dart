import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.name,
      required this.labelText,
      required this.prefixIcon,
      this.obscureText = false,
      this.keyboardInputType = TextInputType.text,
      required this.onChangeCallBack});

  final String name;
  final String labelText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextInputType keyboardInputType;
  final Function(String) onChangeCallBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextField(
          onChanged: onChangeCallBack,
          cursorColor: Colors.brown.shade500,
          obscureText: obscureText,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            enabled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
              borderSide: BorderSide(
                color: Colors.brown.shade200,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
              borderSide: BorderSide(
                color: Colors.brown.shade200,
              ),
            ),
            prefixIcon: Icon(
              prefixIcon,
            ),
            prefixIconColor: Colors.brown.shade200,
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.brown.shade200,
              fontSize: 15.0,
            ),
          ),
        )
      ],
    );
  }
}
