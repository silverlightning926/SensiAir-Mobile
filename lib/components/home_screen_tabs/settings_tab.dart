import 'package:flutter/material.dart';

import '../sensor_button.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 218, 218, 218),
      child: Column(
        children: [
          Padding(
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
              color: const Color(0xAA000000),
              onPressed: () {
                Navigator.pushNamed(context, '/sensorSettings');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Add Sensor',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 35),
                  ),
                  Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                SensorButton(
                  sensorName: 'Living Room',
                  buttonColor: Color(0xFFAA0000),
                  routeName: '/sensorSettings',
                ),
                SensorButton(
                  sensorName: 'Kitchen',
                  buttonColor: Color(0xFF00AA00),
                  routeName: '/sensorSettings',
                ),
                SensorButton(
                  sensorName: 'Bathroom',
                  buttonColor: Color(0xFFAAAA00),
                  routeName: '/sensorSettings',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
