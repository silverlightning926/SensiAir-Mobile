import 'package:flutter/material.dart';
import 'package:sensiable_es_mobile/components/home_screen_tabs/notification_tab.dart';
import 'package:sensiable_es_mobile/components/home_screen_tabs/sensors_tab.dart';
import 'package:sensiable_es_mobile/components/home_screen_tabs/settings_tab.dart';

import '../components/home_screen_tabs/dashboard_tab.dart';
import '../components/photo_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List tabs = [
    const DashboardTab(
      currentAQI: 50,
      currentTemp: 35,
      currentHumidity: 80,
      currentCO2: 390,
      currrentPM25: 35,
      currentVOC: 80,
      currentPressure: 390,
    ),
    const SensorTab(),
    const NotificationTab(),
    const SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: PhotoScaffold(
        appBar: AppBar(
          toolbarHeight: 75,
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
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
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
        body: tabs[_currentIndex],
      ),
    );
  }
}
