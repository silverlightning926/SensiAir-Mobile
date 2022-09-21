import 'package:flutter/material.dart';
import 'package:sensiable_es_mobile/screens/opening_screen.dart';

void main() {
  runApp(const SensiableESApp());
}

class SensiableESApp extends StatelessWidget {
  const SensiableESApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sensiable Environmental Sensor App',
      theme: ThemeData.light().copyWith(),
      routes: {
        '/opening': (context) => const OpeningScreen(),
      },
      initialRoute: '/opening',
      debugShowCheckedModeBanner: false,
    );
  }
}
