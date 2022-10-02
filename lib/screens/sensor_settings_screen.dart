import 'package:flutter/material.dart';
import 'package:sensiair/components/icon_text_field.dart';
import 'package:sensiair/components/photo_scaffold.dart';
import 'package:sensiair/components/rounded_button.dart';
import 'package:sensiair/components/transparent_text_field.dart';

class SensorSettingsScreen extends StatefulWidget {
  const SensorSettingsScreen({super.key});

  @override
  State<SensorSettingsScreen> createState() => _SensorSettingsScreenState();
}

class _SensorSettingsScreenState extends State<SensorSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return PhotoScaffold(
      imagePath: './assets/images/bgPhoto1.jpeg',
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const TransparentTextField(hintText: 'Sensor Name'),
            const TransparentTextField(hintText: 'Sensor Serial No.'),
            const TransparentTextField(hintText: 'Sensor SSID'),
            const TransparentTextField(hintText: 'Sensor Password'),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              crossAxisCount: 3,
              childAspectRatio: 2.0,
              shrinkWrap: true,
              children: const [
                SizedBox(),
                Center(
                  child: Text(
                    'Lower Limit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Upper Limit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Temperature',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TransparentTextField(hintText: ''),
                TransparentTextField(hintText: ''),
                Center(
                  child: Text(
                    'Humidity',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TransparentTextField(hintText: ''),
                TransparentTextField(hintText: ''),
                Center(
                  child: Text(
                    'CO2',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TransparentTextField(hintText: ''),
                TransparentTextField(hintText: ''),
                Center(
                  child: Text(
                    'PM2.5',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TransparentTextField(hintText: ''),
                TransparentTextField(hintText: ''),
                Center(
                  child: Text(
                    'VOC',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TransparentTextField(hintText: ''),
                TransparentTextField(hintText: ''),
                Center(
                  child: Text(
                    'Pressure',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TransparentTextField(hintText: ''),
                TransparentTextField(hintText: ''),
              ],
            ),
            RoundedButton(
              onPressed: () {},
              buttonText: 'Add Sensor',
            ),
          ],
        ),
      ),
    );
  }
}
