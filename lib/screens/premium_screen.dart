// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../widgets/premium_features.dart';
import '../widgets/subscription_plans.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/bottom_actions.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'PREMIUM',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                      SizedBox(height: 30),
                      PremiumFeatures(),
                      SizedBox(height: 30),
                      SubscriptionPlans(),
                      SizedBox(height: 20),
                      BottomActions(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
