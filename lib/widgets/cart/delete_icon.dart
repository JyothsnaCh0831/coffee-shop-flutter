import 'package:flutter/material.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key, required this.onDelete});

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDelete,
      child: const Icon(
        Icons.delete_outline,
        color: Colors.brown,
        size: 20.0,
      ),
    );
  }
}
