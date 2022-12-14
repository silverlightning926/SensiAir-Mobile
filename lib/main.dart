import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sensiair/screens/sensor_settings_screen.dart';
import 'firebase_options.dart';

import 'screens/forgot_password_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/opening_screen.dart';
import 'screens/sensor_screen.dart';
import 'screens/sign_up_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const SensiAir());
}

class SensiAir extends StatelessWidget {
  const SensiAir({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: MaterialApp(
        title: 'SensiAir',
        theme: ThemeData.light().copyWith(),
        routes: {
          '/opening': (context) => const OpeningScreen(),
          '/login': (context) => const LoginScreen(),
          '/forgotPassword': (context) => const ForgotPasswordScreen(),
          '/signup': (context) => const SignUpScreen(),
          '/home': (context) => const HomeScreen(),
          '/sensor': (context) => const SensorScreen(),
          '/sensorSettings': (context) => const SensorSettingsScreen()
        },
        initialRoute:
            FirebaseAuth.instance.currentUser != null ? '/home' : '/opening',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
