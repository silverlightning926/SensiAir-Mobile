import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../components/icon_text_field.dart';
import '../components/photo_scaffold.dart';
import '../components/rounded_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final PhoneController phoneController = PhoneController(
    const PhoneNumber(
      isoCode: IsoCode.US,
      nsn: '',
    ),
  );
  final TextEditingController passwordController = TextEditingController();

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    './assets/images/sensiableLogo.png',
                    scale: 6,
                  ),
                  const SizedBox(
                    width: 20,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconTextField(
                    controller: userNameController,
                    icon: const Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                    hintText: 'Username',
                  ),
                  IconTextField(
                    controller: emailController,
                    icon: const Icon(
                      Icons.email_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                    hintText: 'Email',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 35,
                    ),
                    child: PhoneFormField(
                      controller: phoneController,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      countryCodeStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xAA000000),
                        icon: Icon(
                          Icons.phone_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                        iconColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        hintText: 'Phone',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
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
                ],
              ),
              Text(
                errorText,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              RoundedButton(
                buttonText: 'SIGN UP',
                onPressed: () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then((value) {
                    final user = <String, dynamic>{
                      "userName": userNameController.text,
                      "phone":
                          '+${phoneController.value?.countryCode} ${phoneController.value?.getFormattedNsn(isoCode: phoneController.value?.isoCode)}',
                    };

                    FirebaseFirestore.instance
                        .collection("userInfo")
                        .doc('${value.user?.uid}')
                        .set(user);
                  }).then((value) => {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/home', (route) => false),
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
                          'Already have an account?',
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
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Login',
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
