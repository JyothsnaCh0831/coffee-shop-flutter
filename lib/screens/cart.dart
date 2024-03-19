import 'package:coffee_shop/models/provider.dart';
import 'package:coffee_shop/widgets/cart/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
        builder: (context, activeCategoryProvider, index) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.brown.shade50,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 80.0,
                  bottom: 20.0,
                ),
                child: Text(
                  'Cart List',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: CartList(
                items: activeCategoryProvider.getCartItems,
              ),
            ),
          ],
        ),
      );
    });
  }
}
