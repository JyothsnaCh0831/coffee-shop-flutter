import 'package:coffee_shop/widgets/profile/option_card.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.brown.shade50,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 20.0),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/person.jpeg'),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Rachel Hobs',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 30.0,
                fontFamily: 'Itim',
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            OptionCard(
              text: 'Payment Methods',
              icon: Icons.credit_card,
              actionToPerform: () {},
            ),
            OptionCard(
              text: 'Notifications',
              icon: Icons.notifications,
              actionToPerform: () {},
            ),
            OptionCard(
              text: 'Change Password',
              icon: Icons.lock_outline,
              actionToPerform: () {},
            ),
            OptionCard(
              text: 'Logout',
              icon: Icons.logout,
              actionToPerform: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
