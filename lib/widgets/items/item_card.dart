import 'package:coffee_shop/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {super.key,
      required this.name,
      required this.imageSrc,
      required this.price,
      required this.tagLine});

  final String name;
  final String imageSrc;
  final int price;
  final String tagLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      image: AssetImage('images/items/$imageSrc'),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Itim',
                    ),
                  ),
                  trailing: Text(
                    '\$$price',
                    style: kPriceTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    tagLine,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
