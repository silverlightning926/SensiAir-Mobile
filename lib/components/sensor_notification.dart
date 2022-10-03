import 'package:flutter/material.dart';
import 'package:sensiair/constants/text_constants.dart';

class SensorNotification extends StatelessWidget {
  final Color notificationColor;
  final String notificationHeader;
  final String notificationBody;
  final DateTime dateTimeStamp;
  final IconData notificationIcon;
  final Color iconColor;

  const SensorNotification({
    super.key,
    required this.notificationColor,
    required this.notificationHeader,
    required this.notificationBody,
    required this.dateTimeStamp,
    required this.notificationIcon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 115,
        decoration: BoxDecoration(
          color: notificationColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationHeader,
                  style: TextConstants.notificationHeading,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationBody,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Time: ${dateTimeStamp.hour % 12}:${dateTimeStamp.minute} on ${dateTimeStamp.day}/${dateTimeStamp.month}/${dateTimeStamp.year}',
                      style: TextConstants.normal,
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              notificationIcon,
              color: iconColor,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
