import 'package:flutter/material.dart';

import '../components/icon_text_field.dart';
import '../components/photo_scaffold.dart';
import '../components/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        imagePath: './assets/images/bgPhoto1.jpeg',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  './assets/images/sensiableLogo.png',
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
                    Icons.password_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  hintText: 'Password',
                ),
              ],
            ),
            RoundedButton(
              buttonText: 'LOGIN',
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 1.5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
