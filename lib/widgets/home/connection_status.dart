import 'package:flutter/material.dart';

class ConnectionStatus extends StatelessWidget {
  const ConnectionStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
        'Your connection is not protected!',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 18,
        ),
      ),
    );
  }
}
