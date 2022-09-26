import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

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
      child: LoaderOverlay(
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
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
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
                          onTap: () {},
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    errorText,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              RoundedButton(
                buttonText: 'LOGIN',
                onPressed: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then(
                        (value) => Navigator.pushNamed(context, '/home'),
                      )
                      .catchError((e) {
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
      ),
    );
  }
}
