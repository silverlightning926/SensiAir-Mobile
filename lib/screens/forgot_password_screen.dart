import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/icon_text_field.dart';
import '../components/photo_scaffold.dart';
import '../components/rounded_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String statusText = '';
  Color statusTextColor = Colors.red;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        imagePath: './assets/images/bgPhoto1.jpeg',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
            IconTextField(
              icon: const Icon(
                Icons.email,
                color: Colors.white,
                size: 50,
              ),
              hintText: 'Email',
              controller: emailController,
            ),
            Text(
              statusText,
              style: TextStyle(
                color: statusTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            RoundedButton(
              onPressed: () {
                setState(() {
                  statusTextColor = Colors.white;
                  statusText = 'Password Reset Email Sent!';
                });

                FirebaseAuth.instance
                    .sendPasswordResetEmail(
                  email: emailController.text,
                )
                    .catchError((e) {
                  setState(() {
                    statusTextColor = Colors.red;
                    statusText = 'Something Went Wrong!';
                  });
                });
              },
              buttonText: 'RESET',
            ),
          ],
        ),
      ),
    );
  }
}
