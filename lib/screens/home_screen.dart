import 'package:flutter/material.dart';

import '../components/parameter_button.dart';
import '../components/photo_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PhotoScaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          child: Image.asset('./assets/images/sensiableLogo.png'),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      imagePath: './assets/images/bgPhoto2.jpeg',
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 45, 45, 45),
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: Colors.greenAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sensors_rounded),
            label: 'Sensors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
      ),
      body: Column(
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
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Good',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
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
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 135,
                          width: 135,
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
                                '50',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 45,
                                ),
                              ),
                              Text(
                                'AQI',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
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
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
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
                    value: '35',
                    unit: 'C',
                    icon: const Icon(
                      Icons.thermostat_rounded,
                      color: Colors.green,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                  ParameterButton(
                    title: 'Humidity',
                    value: '80',
                    unit: '%',
                    icon: const Icon(
                      Icons.water_drop_rounded,
                      color: Colors.red,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                  ParameterButton(
                    title: 'CO2',
                    value: '390',
                    unit: 'ppm',
                    icon: const Icon(
                      Icons.cloud_rounded,
                      color: Colors.yellow,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                  ParameterButton(
                    title: 'PM2.5',
                    value: '35',
                    unit: 'ug/m3',
                    icon: const Icon(
                      Icons.air_rounded,
                      color: Colors.yellow,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                  ParameterButton(
                    title: 'VOC',
                    value: '80',
                    unit: 'ppm',
                    icon: const Icon(
                      Icons.bug_report_rounded,
                      color: Colors.red,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                  ParameterButton(
                    title: 'Pressure',
                    value: '390',
                    unit: '',
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.green,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
