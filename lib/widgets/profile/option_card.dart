import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard(
      {super.key,
      required this.text,
      required this.icon,
      required this.actionToPerform});

  final String text;
  final IconData icon;
  final VoidCallback actionToPerform;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: actionToPerform,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.brown,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
