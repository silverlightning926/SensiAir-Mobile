import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';
import 'package:sensiair/components/rounded_button.dart';
import 'package:sensiair/constants/color_constants.dart';

import '../components/photo_scaffold.dart';

class SensorScreen extends StatefulWidget {
  const SensorScreen({super.key});

  @override
  State<SensorScreen> createState() => _SensorScreenState();
}

enum Parameter { temperature, humidity, co2, pm25, voc, pressure }

class _SensorScreenState extends State<SensorScreen> {
  Parameter? _selectedParameter = Parameter.temperature;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhotoScaffold(
        imagePath: './assets/images/bgPhoto1.jpeg',
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: ColorConstants.panelBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Chart(
                    padding: const EdgeInsets.all(10),
                    layers: [
                      ChartAxisLayer(
                        settings: ChartAxisSettings(
                          x: ChartAxisSettingsAxis(
                            frequency: 1.0,
                            max: 13.0,
                            min: 7.0,
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 10.0,
                            ),
                          ),
                          y: ChartAxisSettingsAxis(
                            frequency: 100.0,
                            max: 300.0,
                            min: 0.0,
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        labelX: (value) => value.toInt().toString(),
                        labelY: (value) => value.toInt().toString(),
                      ),
                      ChartBarLayer(
                        items: List.generate(
                          13 - 7 + 1,
                          (index) => ChartBarDataItem(
                            color: ColorConstants.chartColor,
                            value: Random().nextInt(280) + 20,
                            x: index.toDouble() + 7,
                          ),
                        ),
                        settings: const ChartBarSettings(
                          thickness: 8.0,
                          radius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.panelBg,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  "Temperature",
                                ),
                                leading: Radio(
                                  value: Parameter.temperature,
                                  groupValue: _selectedParameter,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _selectedParameter = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  "Humidity",
                                ),
                                leading: Radio(
                                  value: Parameter.humidity,
                                  groupValue: _selectedParameter,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _selectedParameter = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  "CO2",
                                ),
                                leading: Radio(
                                  value: Parameter.co2,
                                  groupValue: _selectedParameter,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _selectedParameter = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  "PM2.5",
                                ),
                                leading: Radio(
                                  value: Parameter.pm25,
                                  groupValue: _selectedParameter,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _selectedParameter = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  "VOC",
                                ),
                                leading: Radio(
                                  value: Parameter.voc,
                                  groupValue: _selectedParameter,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _selectedParameter = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  "Pressure",
                                ),
                                leading: Radio(
                                  value: Parameter.pressure,
                                  groupValue: _selectedParameter,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _selectedParameter = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.panelBg,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.white,
                                child: Text('Feb 6, 2022'),
                              ),
                              const Icon(
                                Icons.arrow_downward_rounded,
                                color: Colors.white,
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.white,
                                child: Text('Sep 26, 2022'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
