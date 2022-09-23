import 'package:flutter/material.dart';

import '../sensor_button.dart';

class SensorTab extends StatefulWidget {
  const SensorTab({super.key});

  @override
  State<SensorTab> createState() => _SensorTabState();
}

class _SensorTabState extends State<SensorTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 218, 218, 218),
          ),
        ),
        ListView(
          padding: const EdgeInsets.all(10),
          children: [
            SensorButton(
              sensorName: 'Living Room',
              buttonColor: const Color(0xFFAA0000),
              onPressed: () {},
            ),
            SensorButton(
              sensorName: 'Kitchen',
              buttonColor: const Color(0xFF00AA00),
              onPressed: () {},
            ),
            SensorButton(
              sensorName: 'Bathroom',
              buttonColor: const Color(0xFFAAAA00),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
