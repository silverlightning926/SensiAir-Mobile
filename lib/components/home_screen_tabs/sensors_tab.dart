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
    return Container(
      color: const Color.fromARGB(255, 218, 218, 218),
      child: ListView(
        children: const [
          SensorButton(
            sensorName: 'Living Room',
            buttonColor: Colors.red,
          ),
          SensorButton(
            sensorName: 'Kitchen',
            buttonColor: Colors.green,
          ),
          SensorButton(
            sensorName: 'Bathroom',
            buttonColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
