import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sensiair/constants/text_constants.dart';

import '../components/icon_text_field.dart';
import '../components/photo_scaffold.dart';
import '../components/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String errorText = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        imagePath: './assets/images/bgPhoto1.jpeg',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconTextField(
                  controller: emailController,
                  icon: const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  hintText: 'Email',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconTextField(
                      controller: passwordController,
                      obscureText: true,
                      icon: const Icon(
                        Icons.password_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                      hintText: 'Password',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgotPassword');
                        },
                        child: const Text('Forgot Password',
                            style: TextConstants.lightLink),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  errorText,
                  style: TextConstants.error,
                ),
              ],
            ),
            RoundedButton(
              buttonText: 'LOGIN',
              onPressed: () {
                context.loaderOverlay.show();
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text)
                    .then((value) => {
                          context.loaderOverlay.hide(),
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/home', (route) => false)
                        })
                    .catchError((e) {
                  context.loaderOverlay.hide();
                  setState(() {
                    errorText = 'Something Went Wrong';
                  });
                });
              },
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
                        style: TextConstants.normal,
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
                          style: TextConstants.heavyLink,
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
