import 'package:coffee_shop/widgets/items/display_items.dart';
import 'package:flutter/material.dart';

import '../widgets/categories/list_categories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.brown.shade50,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 10.0,
          right: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: Icon(
                Icons.menu,
              ),
            ),
            ListTile(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Username',
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  Text(
                    'You can order drinks to take away',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
              trailing: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/person.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
              child: const CatgeoriesList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: DisplayItems(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
