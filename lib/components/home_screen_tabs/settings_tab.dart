import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sensiair/components/rounded_button.dart';
import 'package:sensiair/constants/color_constants.dart';
import 'package:sensiair/constants/text_constants.dart';

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
              color: ColorConstants.button,
              onPressed: () {
                Navigator.pushNamed(context, '/sensorSettings');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Add Sensor',
                    style: TextConstants.sensorHeading,
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
                  buttonColor: Colors.red,
                  routeName: '/sensorSettings',
                ),
                SensorButton(
                  sensorName: 'Kitchen',
                  buttonColor: Colors.green,
                  routeName: '/sensorSettings',
                ),
                SensorButton(
                  sensorName: 'Bathroom',
                  buttonColor: Colors.yellow,
                  routeName: '/sensorSettings',
                ),
              ],
            ),
          ),
          RoundedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then(
                    (value) => Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/opening',
                      (route) => false,
                    ),
                  );
            },
            buttonText: 'Logout',
          ),
        ],
      ),
    );
  }
}
