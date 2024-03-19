import 'package:flutter/material.dart';

import '../widgets/bottom_tabbar.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  static String bottomMenu = "bottomMenu";
  @override
  Widget build(BuildContext context) {
    return const BottomNavBar();
  }
}
