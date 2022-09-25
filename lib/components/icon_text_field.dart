import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  final Icon icon;
  final String hintText;

  final Color textFieldColor;
  final Color hintTextColor;
  final Color inputTextColor;
  final TextEditingController? controller;
  final bool obscureText;

  const IconTextField({
    Key? key,
    required this.icon,
    required this.hintText,
    this.textFieldColor = const Color(0xAA000000),
    this.hintTextColor = Colors.grey,
    this.inputTextColor = Colors.white,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 35,
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
          icon: icon,
          iconColor: Colors.white,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
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
            color: hintTextColor,
          ),
        ),
      ),
    );
  }
}
