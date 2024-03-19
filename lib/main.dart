import 'package:coffee_shop/screens/bottom_menu.dart';
import 'package:coffee_shop/screens/login.dart';
import 'package:coffee_shop/screens/onboard.dart';
import 'package:coffee_shop/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Login.loginID: (context) => const Login(),
        Register.registerID: (context) => const Register(),
        BottomMenu.bottomMenu: (context) => const BottomMenu(),
      },
      home: const OnBoard(),
    );
  }
}
