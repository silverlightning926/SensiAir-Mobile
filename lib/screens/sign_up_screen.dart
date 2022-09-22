import 'package:flutter/material.dart';

import '../components/icon_text_field.dart';
import '../components/photo_scaffold.dart';
import '../components/rounded_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        imagePath: './assets/openingPageBG.jpeg',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  './assets/sensiableLogo.png',
                  scale: 2.5,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SENSIABLE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                IconTextField(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  hintText: 'Username',
                ),
                IconTextField(
                  icon: Icon(
                    Icons.email_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  hintText: 'Email',
                ),
                IconTextField(
                  icon: Icon(
                    Icons.phone_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  hintText: 'Phone Number',
                ),
                IconTextField(
                  icon: Icon(
                    Icons.password_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  hintText: 'Password',
                ),
              ],
            ),
            RoundedButton(
              buttonText: 'SIGN UP',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
