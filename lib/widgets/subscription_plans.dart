import 'package:flutter/material.dart';

import '../model/subscription_plan.dart';

class SubscriptionPlans extends StatelessWidget {
  const SubscriptionPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: SubscriptionPlan.plans.map((plan) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Material(
            color: plan.isHighlighted
                ? Colors.purple.withOpacity(0.3)
                : Colors.blue.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '¥${plan.price}',
                          style: const TextStyle(
                            color: Colors.cyan,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/${plan.period}',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 16,
                          ),
                        ),
                        if (plan.monthlyPrice != null)
                          Text(
                            '(¥${plan.monthlyPrice}/month)',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    Text(
                      plan.duration,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
