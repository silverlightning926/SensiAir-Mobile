import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../rounded_button.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 218, 218, 218),
            child: Center(
              child: RoundedButton(
                buttonText: 'Log Out',
                onPressed: () {
                  context.loaderOverlay.show();
                  FirebaseAuth.instance.signOut().then(
                        (value) => {
                          context.loaderOverlay.hide(),
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/opening', (route) => false)
                        },
                      );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
