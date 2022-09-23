import 'package:flutter/material.dart';

class SensorButton extends StatelessWidget {
  final Color buttonColor;
  final String sensorName;

  const SensorButton({
    Key? key,
    required this.buttonColor,
    required this.sensorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 75,
        padding: const EdgeInsets.all(15),
        color: buttonColor,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sensorName,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 35),
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
