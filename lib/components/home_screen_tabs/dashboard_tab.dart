import 'package:flutter/material.dart';
import 'package:sensiair/constants/text_constants.dart';

import '../parameter_button.dart';

class DashboardTab extends StatefulWidget {
  final int currentAQI;
  final int currentTemp;
  final int currentHumidity;
  final int currentCO2;
  final int currrentPM25;
  final int currentVOC;
  final int currentPressure;

  const DashboardTab({
    Key? key,
    required this.currentAQI,
    required this.currentTemp,
    required this.currentHumidity,
    required this.currentCO2,
    required this.currrentPM25,
    required this.currentVOC,
    required this.currentPressure,
  }) : super(key: key);

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(186, 46, 120, 63),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: const [
                        Text(
                          'Home',
                          style: TextConstants.normalSmall,
                        ),
                        Text(
                          'Good',
                          style: TextConstants.bold,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.update,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '1 min ago',
                          style: TextConstants.normalSmall,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.currentAQI.toString(),
                              style: TextConstants.displayParameter,
                            ),
                            const Text(
                              'AQI',
                              style: TextConstants.normal,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Ideal',
                              style: TextConstants.normalSmall,
                            ),
                            Text(
                              '50',
                              style: TextConstants.displayParameterSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: const Color.fromARGB(255, 218, 218, 218),
            child: GridView.count(
              padding: const EdgeInsets.all(20.0),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                ParameterButton(
                  title: 'Temperature',
                  value: widget.currentTemp.toString(),
                  unit: 'C',
                  icon: Icons.thermostat_rounded,
                  iconColor: Colors.green,
                  onPressed: () {},
                ),
                ParameterButton(
                  title: 'Humidity',
                  value: widget.currentHumidity.toString(),
                  unit: '%',
                  icon: Icons.water_drop_rounded,
                  iconColor: Colors.red,
                  onPressed: () {},
                ),
                ParameterButton(
                  title: 'CO2',
                  value: widget.currentCO2.toString(),
                  unit: 'ppm',
                  icon: Icons.cloud_rounded,
                  iconColor: Colors.yellow,
                  onPressed: () {},
                ),
                ParameterButton(
                  title: 'PM2.5',
                  value: widget.currrentPM25.toString(),
                  unit: 'ug/m3',
                  icon: Icons.air_rounded,
                  iconColor: Colors.yellow,
                  onPressed: () {},
                ),
                ParameterButton(
                  title: 'VOC',
                  value: widget.currentVOC.toString(),
                  unit: 'ppm',
                  icon: Icons.bug_report_rounded,
                  iconColor: Colors.red,
                  onPressed: () {},
                ),
                ParameterButton(
                  title: 'Pressure',
                  value: widget.currentPressure.toString(),
                  unit: '',
                  icon: Icons.arrow_forward_rounded,
                  iconColor: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
