import 'package:coffee_shop/models/data.dart';
import 'package:coffee_shop/models/item_class.dart';

enum Category { coffee, tea, icecreams, juices, desserts }

extension CategoryExtension on Category {
  String capitalize() {
    return name.replaceFirst(name[0], name[0].toUpperCase());
  }
}

extension CategoryListExtension on Category {
  List<ItemDeets> get items {
    switch (name) {
      case 'coffee':
        return coffeeItems;
      case 'tea':
        return teaItems;
      case 'icecreams':
        return icecreamItems;
      case 'juices':
        return juiceItems;
      case 'desserts':
        return dessertItems;
    }
    return [];
  }
}
