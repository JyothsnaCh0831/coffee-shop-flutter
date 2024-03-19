import 'package:coffee_shop/models/cart_class.dart';
import 'package:coffee_shop/models/categories.dart';
import 'package:coffee_shop/models/provider.dart';
import 'package:coffee_shop/screens/item_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/item_class.dart';
import 'item_card.dart';

class DisplayItems extends StatelessWidget {
  DisplayItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, dataProvider, index) {
        List<ItemDeets> itemsList =
            Category.values[dataProvider.getActiveIndex].items;
        String categoryName = dataProvider.getCategoryName;
        return GridView.builder(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemInfo(
                      item: itemsList[index],
                      category: categoryName,
                      onAddToCart: () {
                        dataProvider.addIntoCart(
                          CartItem(
                            item: itemsList[index],
                            category: categoryName,
                            quantity: 1,
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: ItemCard(
                name: itemsList[index].name,
                imageSrc: '$categoryName/${itemsList[index].imageSrc}',
                price: itemsList[index].price,
                tagLine: itemsList[index].tagLine,
              ),
            );
          },
          itemCount: itemsList.length,
        );
      },
    );
  }
}
