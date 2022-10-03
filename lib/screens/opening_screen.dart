import 'package:flutter/material.dart';

import '../constants/text_constants.dart';

import '../components/photo_scaffold.dart';
import '../components/rounded_button.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        imagePath: './assets/images/bgPhoto1.jpeg',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Image.asset(
                  './assets/images/sensiableLogo.png',
                  scale: 3.5,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SENSIABLE',
                  textAlign: TextAlign.center,
                  style: TextConstants.heading1,
                ),
              ],
            ),
            Column(
              children: [
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  buttonText: 'LOGIN',
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  buttonText: 'SIGN UP',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
