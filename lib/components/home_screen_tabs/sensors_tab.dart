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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        SensorButton(
          sensorName: 'Living Room',
          buttonColor: Color(0x88AA0000),
        ),
        SensorButton(
          sensorName: 'Kitchen',
          buttonColor: Color(0x8800AA00),
        ),
        SensorButton(
          sensorName: 'Kitchen',
          buttonColor: Color(0x88AAAA00),
        ),
      ],
    );
  }
}
