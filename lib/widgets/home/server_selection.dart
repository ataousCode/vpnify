import 'package:flutter/material.dart';

class ServerSelection extends StatelessWidget {
  const ServerSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.auto_awesome, color: Colors.cyan[300]),
            const SizedBox(width: 8),
            Text(
              'Auto Select',
              style: TextStyle(
                color: Colors.cyan[300],
                fontSize: 18,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'Selected Location',
          style: TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.dns_outlined),
          label: const Text('Select Server'),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white70,
            side: const BorderSide(color: Colors.white24),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
