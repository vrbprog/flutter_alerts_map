import 'package:flutter/material.dart';
import 'package:flutter_alerts_map/router/app_router.dart';
void main() {
  runApp(const AlertsMapOfUkraine());
}

class AlertsMapOfUkraine extends StatelessWidget {
  const AlertsMapOfUkraine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
