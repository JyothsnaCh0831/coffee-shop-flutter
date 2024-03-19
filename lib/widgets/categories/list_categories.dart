import 'package:coffee_shop/models/provider.dart';
import 'package:coffee_shop/widgets/categories/category_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/categories.dart';

class CatgeoriesList extends StatefulWidget {
  const CatgeoriesList({super.key});

  @override
  State<CatgeoriesList> createState() => _CatgeoriesListState();
}

class _CatgeoriesListState extends State<CatgeoriesList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, dataProvider, index) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return CategoryTitle(
              categoryName: Category.values[index].capitalize(),
              isActive: dataProvider.getActiveIndex == index,
              onTap: () {
                dataProvider.setActiveIndex(index);
              },
            );
          },
          itemCount: Category.values.length,
          scrollDirection: Axis.horizontal,
        );
      },
    );
  }
}
