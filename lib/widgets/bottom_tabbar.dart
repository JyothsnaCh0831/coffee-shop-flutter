import 'package:coffee_shop/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/provider.dart';
import '../screens/cart.dart';
import '../screens/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DataProvider()),
        ],
        child: Scaffold(
          backgroundColor: Colors.brown.shade50,
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.brown,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            labelColor: Colors.brown,
            unselectedLabelColor: Colors.brown.shade300,
            padding: const EdgeInsets.only(bottom: 15.0),
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                text: 'Cart',
              ),
              Tab(
                icon: Icon(
                  Icons.person_outline,
                ),
                text: 'Profile',
              ),
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              Home(),
              Cart(),
              Profile(),
            ],
          ),
        ),
      ),
    );
  }
}
