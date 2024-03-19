import 'package:coffee_shop/screens/bottom_menu.dart';
import 'package:coffee_shop/screens/register.dart';
import 'package:coffee_shop/widgets/button.dart';
import 'package:coffee_shop/widgets/heading_text.dart';
import 'package:coffee_shop/widgets/login_register_widgets/bottom_text.dart';
import 'package:coffee_shop/widgets/login_register_widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/logo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static String loginID = "login";

  Widget buildLandscape(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 20.0,
            right: 20.0,
            bottom: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Logo(),
              ),
              const Align(
                alignment: Alignment.center,
                child: HeadingText(
                  heading: 'Login',
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              CustomTextField(
                name: 'Email',
                labelText: 'Enter your Email',
                prefixIcon: Icons.email_outlined,
                keyboardInputType: TextInputType.emailAddress,
                onChangeCallBack: (value) {},
              ),
              const SizedBox(
                height: 25.0,
              ),
              CustomTextField(
                name: 'Password',
                labelText: 'Enter your Password',
                prefixIcon: Icons.lock_outline_rounded,
                obscureText: true,
                onChangeCallBack: (value) {},
              ),
              const SizedBox(
                height: 50.0,
              ),
              CustomButton(
                buttonText: 'Sign In',
                onPressCallBack: () {
                  Navigator.pushNamed(context, BottomMenu.bottomMenu);
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Register.registerID);
                },
                child: const BottomText(
                  normalText: 'Don\'t have an account?',
                  boldText: 'Sign Up for Free',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPortrait(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Logo(),
          ),
          const Align(
            alignment: Alignment.center,
            child: HeadingText(
              heading: 'Login',
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          CustomTextField(
            name: 'Email',
            labelText: 'Enter your Email',
            prefixIcon: Icons.email_outlined,
            keyboardInputType: TextInputType.emailAddress,
            onChangeCallBack: (value) {},
          ),
          const SizedBox(
            height: 25.0,
          ),
          CustomTextField(
            name: 'Password',
            labelText: 'Enter your Password',
            prefixIcon: Icons.lock_outline_rounded,
            obscureText: true,
            onChangeCallBack: (value) {},
          ),
          const SizedBox(
            height: 50.0,
          ),
          CustomButton(
            buttonText: 'Sign In',
            onPressCallBack: () {
              Navigator.pushNamed(context, BottomMenu.bottomMenu);
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Register.registerID);
            },
            child: const BottomText(
              normalText: 'Don\'t have an account?',
              boldText: 'Sign Up for Free',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.brown.shade50,
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? buildPortrait(context)
                : buildLandscape(context);
          },
        ),
      ),
    );
  }
}
