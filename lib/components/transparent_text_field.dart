import 'package:flutter/material.dart';

class TransparentTextField extends StatelessWidget {
  final String hintText;

  final Color textFieldColor;
  final Color hintTextColor;
  final Color inputTextColor;
  final TextEditingController? controller;
  final bool obscureText;

  const TransparentTextField({
    Key? key,
    required this.hintText,
    this.textFieldColor = const Color.fromARGB(170, 107, 106, 106),
    this.hintTextColor = Colors.white,
    this.inputTextColor = Colors.white,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2.3,
        horizontal: 5,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          color: inputTextColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: textFieldColor,
          iconColor: Colors.white,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: hintTextColor,
          ),
        ),
      ),
    );
  }
}
