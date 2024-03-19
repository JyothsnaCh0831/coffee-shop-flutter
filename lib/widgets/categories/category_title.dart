import 'package:flutter/material.dart';

class CategoryTitle extends StatefulWidget {
  CategoryTitle(
      {super.key,
      required this.categoryName,
      required this.onTap,
      this.isActive = false});

  final String categoryName;
  bool isActive;
  final VoidCallback onTap;

  @override
  State<CategoryTitle> createState() => _CategoryTitleState();
}

class _CategoryTitleState extends State<CategoryTitle> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: widget.isActive ? Colors.brown.shade600 : Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          widget.categoryName,
          style: TextStyle(
            fontSize: 12.0,
            color: widget.isActive ? Colors.white : Colors.brown.shade700,
          ),
        ),
      ),
    );
  }
}
