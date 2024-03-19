import 'package:coffee_shop/screens/bottom_menu.dart';
import 'package:coffee_shop/screens/login.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/heading_text.dart';
import '../widgets/login_register_widgets/bottom_text.dart';
import '../widgets/login_register_widgets/text_field.dart';
import '../widgets/logo.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  static String registerID = "register";

  Widget buildLandScape(BuildContext context) {
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
                  heading: 'Register',
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              CustomTextField(
                name: 'Full Name',
                labelText: 'Enter your Full Name',
                prefixIcon: Icons.person_outline_rounded,
                keyboardInputType: TextInputType.emailAddress,
                onChangeCallBack: (value) {},
              ),
              const SizedBox(
                height: 25.0,
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
                buttonText: 'Sign Up',
                onPressCallBack: () {
                  Navigator.pushNamed(context, BottomMenu.bottomMenu);
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Login.loginID);
                },
                child: const BottomText(
                  normalText: 'Already have an account?',
                  boldText: 'Sign In',
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
              heading: 'Register',
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          CustomTextField(
            name: 'Full Name',
            labelText: 'Enter your Full Name',
            prefixIcon: Icons.person_outline_rounded,
            keyboardInputType: TextInputType.emailAddress,
            onChangeCallBack: (value) {},
          ),
          const SizedBox(
            height: 25.0,
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
            buttonText: 'Sign Up',
            onPressCallBack: () {
              Navigator.pushNamed(context, BottomMenu.bottomMenu);
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Login.loginID);
            },
            child: const BottomText(
              normalText: 'Already have an account?',
              boldText: 'Sign In',
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
                : buildLandScape(context);
          },
        ),
      ),
    );
  }
}
