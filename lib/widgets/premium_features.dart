import 'package:flutter/material.dart';

import '../model/feature.dart';

class PremiumFeatures extends StatelessWidget {
  const PremiumFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: Feature.premiumFeatures.map((feature) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Icon(
                  Icons.auto_awesome,
                  color: Colors.purple[300],
                ),
                const SizedBox(width: 12),
                Text(
                  feature,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
