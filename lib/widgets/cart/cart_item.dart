import 'package:coffee_shop/models/item_class.dart';
import 'package:coffee_shop/models/provider.dart';
import 'package:coffee_shop/widgets/cart/delete_icon.dart';
import 'package:coffee_shop/widgets/cart/item_quantity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/cart_class.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard(
      {super.key,
      required this.item,
      required this.category,
      required this.quantity});

  final ItemDeets item;
  final String category;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    final CartItem itemDeets = CartItem(
      item: item,
      category: category,
      quantity: quantity,
    );

    return Consumer<DataProvider>(
      builder: (context, dataProvider, index) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image:
                        AssetImage('images/items/$category/${item.imageSrc}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 22.0,
                              fontFamily: 'Itim',
                            ),
                          ),
                          DeleteIcon(
                            onDelete: () {
                              dataProvider.deleteFromCart(itemDeets);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Category:',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            category,
                            style: const TextStyle(
                              color: Colors.brown,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Text(
                              '\$${item.price}',
                              style: const TextStyle(
                                color: Colors.brown,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ItemQuantity(
                            quantity: quantity,
                            onIncrement: () {
                              dataProvider.incrementQuantity(itemDeets);
                            },
                            onDecrement: () {
                              dataProvider.decrementQuantity(itemDeets);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
