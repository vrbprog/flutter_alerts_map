import 'package:flutter/material.dart';
import 'package:flutter_alerts_map/screens/home_screen.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({required this.type, required this.onTap, super.key});

  final HomeCardType type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(type.iconName, width: 20, height: 20),
              const SizedBox(width: 12),
              Text(
                type.cardName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
