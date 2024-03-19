import 'package:coffee_shop/models/cart_class.dart';
import 'package:coffee_shop/widgets/cart/cart_item.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  CartList({super.key, required this.items});

  List<CartItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(25.0),
      itemBuilder: (context, index) {
        return Column(
          children: [
            CartItemCard(
              item: items[index].item,
              category: items[index].category,
              quantity: items[index].quantity,
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        );
      },
      itemCount: items.length,
    );
  }
}
