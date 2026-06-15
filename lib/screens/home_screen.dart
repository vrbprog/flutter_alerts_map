import 'package:flutter/material.dart';
import 'package:flutter_alerts_map/widgets/home_screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF1DC0F4), Color(0xFFF2F67C)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeScreenCard(type: HomeCardType.map, onTap: () => ()),
                  HomeScreenCard(type: HomeCardType.region, onTap: () => ()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum HomeCardType {
  map(cardName: 'Alerts Map', iconName: 'assets/icons/icon_map.png'),
  region(cardName: 'Region Alerts', iconName: 'assets/icons/icon_city.png');

  const HomeCardType({required this.cardName, required this.iconName});

  final String cardName;
  final String iconName;
}
