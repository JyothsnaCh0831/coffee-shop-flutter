import 'package:coffee_shop/models/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemQuantity extends StatelessWidget {
  const ItemQuantity(
      {super.key,
      required this.quantity,
      required this.onIncrement,
      required this.onDecrement});

  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, dataProvider, index) {
        return PhysicalModel(
          elevation: 5,
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: onDecrement,
                  child: Icon(
                    Icons.remove_circle,
                    color: Colors.brown.shade200,
                    size: 25.0,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                GestureDetector(
                  onTap: onIncrement,
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.brown.shade400,
                    size: 25.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
