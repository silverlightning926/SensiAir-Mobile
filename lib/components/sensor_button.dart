import 'package:flutter/material.dart';

class SensorButton extends StatelessWidget {
  final Color buttonColor;
  final String sensorName;
  final String routeName;

  const SensorButton({
    Key? key,
    required this.buttonColor,
    required this.sensorName,
    this.routeName = '/sensor',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 75,
        padding: const EdgeInsets.all(15),
        color: buttonColor,
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sensorName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
            const Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
