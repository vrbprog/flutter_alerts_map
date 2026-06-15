
import 'package:flutter_alerts_map/router/router_names.dart';
import 'package:flutter_alerts_map/screens/alerts_map.dart';
import 'package:flutter_alerts_map/screens/home_screen.dart';
import 'package:flutter_alerts_map/screens/region_alerts.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'alertsMap',
          name: RouteNames.alertsMap.name,
          builder: (context, state) => const AlertsMapScreen(),
        ),
        GoRoute(
          path: 'regionAlerts',
          name: RouteNames.regionAlerts.name,
          builder: (context, state) => const RegionAlertsScreen(),
        ),
      ],
    ),
  ],
);
