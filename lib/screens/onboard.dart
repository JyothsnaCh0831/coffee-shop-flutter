import 'package:coffee_shop/screens/login.dart';
import 'package:coffee_shop/screens/register.dart';
import 'package:coffee_shop/widgets/onboard_screen/image.dart';
import 'package:coffee_shop/widgets/onboard_screen/page_bodies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.brown.shade50,
        pageBackgroundColor: Colors.brown.shade50,
        centerBackground: true,
        finishButtonText: 'Get Started',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.brown.shade500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        onFinish: () {
          Navigator.pushNamed(context, Register.registerID);
        },
        skipTextButton: Text(
          'Skip',
          style: TextStyle(
            color: Colors.brown.shade600,
            fontSize: 18.0,
          ),
        ),
        trailing: Text(
          'Login',
          style: TextStyle(
            color: Colors.brown.shade600,
            fontSize: 18.0,
          ),
        ),
        trailingFunction: () {
          Navigator.pushNamed(context, Login.loginID);
        },
        controllerColor: Colors.brown.shade400,
        background: [
          OnBoardScreenImage(image: 'coffee_1'),
          OnBoardScreenImage(image: 'coffee_2'),
          OnBoardScreenImage(image: 'coffee_3'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          PageBodyContainer(
              centerText: 'Welcome to BrewBuddy',
              title: 'Discover Your Perfect Cup',
              subText:
                  'Explore a world of flavors tailored to your taste buds.'),
          PageBodyContainer(
              centerText: 'Create Your Coffee Profile',
              title: 'Craft Your Coffee Journey',
              subText:
                  'Personalize your preferences and let us curate your coffee experience.'),
          PageBodyContainer(
              centerText: 'Brew, Sip, Repeat',
              title: 'Savor Every Sip',
              subText:
                  'From bean to cup, your coffee adventure starts here. Enjoy the journey!'),
        ],
      ),
    );
  }
}
