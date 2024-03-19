import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/models/item_class.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatefulWidget {
  const ItemInfo(
      {super.key,
      required this.item,
      required this.category,
      required this.onAddToCart});

  final ItemDeets item;
  final String category;
  final Function() onAddToCart;

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.brown.shade50,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Image(
              height: MediaQuery.of(context).size.height * 0.6,
              image: AssetImage(
                  'images/items/${widget.category}/${widget.item.imageSrc}'),
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10.0,
              top: 50.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        widget.category.replaceFirst(widget.category[0],
                            widget.category[0].toUpperCase()),
                        style: const TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        widget.item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 28.0,
                          color: Colors.brown,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      kRatingStars,
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in velit esse cillum dolore eu fugiat nulla pariatur.',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Itim',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'Price',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  '\$${widget.item.price}',
                                  style: const TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 25.0,
                                    fontFamily: 'Pacifico',
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.brown.shade500,
                              ),
                              onPressed: widget.onAddToCart,
                              child: const Text(
                                'Add to Cart',
                                style: kButtonTextStyle,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.47,
              right: 35,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade300,
                  radius: 30.0,
                  child: Icon(
                    isFavourite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// cartItemsObj.addIntoCart(
// CartItem(
// item: widget.item,
// category: widget.category,
// quantity: 1,
// ),
// );
// print(cartItemsObj.getCartItems);
