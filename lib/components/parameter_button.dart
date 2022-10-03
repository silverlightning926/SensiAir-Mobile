import 'package:flutter/material.dart';
import 'package:sensiair/constants/text_constants.dart';

class ParameterButton extends StatelessWidget {
  final String title;
  final String value;
  final String unit;
  final IconData icon;
  final Color iconColor;

  final Function() onPressed;

  const ParameterButton({
    Key? key,
    required this.title,
    required this.value,
    required this.unit,
    required this.icon,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(15.0),
      elevation: 10,
      onPressed: onPressed,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextConstants.heading2,
          ),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                value,
                style: TextConstants.parameter,
              ),
              Text(
                unit,
                style: TextConstants.parameterUnit,
              ),
            ],
          ),
          Icon(
            icon,
            color: iconColor,
            size: 50,
          ),
        ],
      ),
    );
  }
}
