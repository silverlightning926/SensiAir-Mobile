import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 218, 218, 218),
          ),
        )
      ],
    );
  }
}
