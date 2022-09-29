import 'package:flutter/material.dart';

import '../sensor_notification.dart';

class NotificationTab extends StatefulWidget {
  const NotificationTab({super.key});

  @override
  State<NotificationTab> createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 218, 218, 218),
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          SensorNotification(
            notificationColor: const Color(0xAAAA0000),
            notificationHeader: 'Living Room',
            notificationBody: 'Temperature crossed 45C',
            dateTimeStamp: DateTime.now(),
            notificationIcon: Icons.warning_rounded,
            iconColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
