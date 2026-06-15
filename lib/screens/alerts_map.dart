import 'package:flutter/material.dart';

class AlertsMapScreen extends StatelessWidget {
  const AlertsMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF7EC8F2), Color(0xFFACDCF7)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xFFB3DFF7),
          title: Text('Alerts Map'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              // Add your widgets here
              Stack(
                children: [
                  Image.asset(
                    'assets/maps/map.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Image.asset(
                    'assets/maps/Kyiv.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
