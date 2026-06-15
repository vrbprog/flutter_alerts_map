import 'package:flutter/material.dart';
import 'package:flutter_alerts_map/screens/home_screen.dart';

void main() {
  runApp(const AlertsMapOfUkraine());
}

class AlertsMapOfUkraine extends StatelessWidget {
  const AlertsMapOfUkraine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
