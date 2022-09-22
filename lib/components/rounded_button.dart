import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  const RoundedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.buttonColor = const Color(0xAA000000),
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MaterialButton(
        onPressed: onPressed,
        color: buttonColor,
        height: 75,
        minWidth: 175,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
