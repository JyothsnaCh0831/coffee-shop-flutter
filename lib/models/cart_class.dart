import 'package:coffee_shop/models/item_class.dart';

class CartItem {
  ItemDeets item;
  String category;
  int quantity;

  CartItem(
      {required this.item, required this.category, required this.quantity});
}
