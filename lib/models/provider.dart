import 'package:flutter/material.dart';

import 'cart_class.dart';
import 'categories.dart';

class DataProvider extends ChangeNotifier {
  // Handling categories selection
  int _activeIndex = 0;

  // Getting the index of active category
  int get getActiveIndex => _activeIndex;

  void setActiveIndex(int index) {
    // Setting the active category
    _activeIndex = index;
    notifyListeners();
  }

  String get getCategoryName {
    // Get the category name
    return Category.values[_activeIndex].name;
  }

  // Cart Management
  final List<CartItem> _cartItemsList = [];

  List<CartItem> get getCartItems {
    // Get items in cart
    return _cartItemsList;
  }

  int get numberOfItems {
    // Return the count of items in cart
    return _cartItemsList.length;
  }

  bool isExists(CartItem item) {
    // Check if the item already exists in the cart
    bool itemExists = _cartItemsList.any((cartItem) =>
        cartItem.item == item.item && cartItem.category == item.category);
    return itemExists;
  }

  int getIndexOf(CartItem item) {
    if (isExists(item)) {
      // If the item exists, find its index
      int index = _cartItemsList.indexWhere((cartItem) =>
          cartItem.item == item.item && cartItem.category == item.category);
      return index;
    }
    return -1;
  }

  void addIntoCart(CartItem item) {
    if (isExists(item)) {
      int index = getIndexOf(item);

      // If the item exists, increment quantity
      _cartItemsList[index].quantity += item.quantity;
    } else {
      // If the item does not exist, add it to the cart
      _cartItemsList.add(item);
    }
    notifyListeners();
  }

  // Remove item from the cart
  void deleteFromCart(CartItem item) {
    int index = getIndexOf(item);
    _cartItemsList.removeAt(index);
    notifyListeners();
  }

  // Plus the order count of item
  void incrementQuantity(CartItem item) {
    int index = getIndexOf(item);
    _cartItemsList[index].quantity++;
    notifyListeners();
  }

  // Minus the order count of item
  void decrementQuantity(CartItem item) {
    int index = getIndexOf(item);
    if (_cartItemsList[index].quantity == 1) {
      deleteFromCart(item);
    } else {
      _cartItemsList[index].quantity--;
    }
    notifyListeners();
  }
}
