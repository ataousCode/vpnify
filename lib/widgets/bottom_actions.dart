import 'package:flutter/material.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'All plans start with a free 7 day trial!',
          style: TextStyle(
            color: Colors.cyan[300],
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Continue with Free version',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.restore, color: Colors.purple),
          label: const Text(
            'Restore Purchases',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
