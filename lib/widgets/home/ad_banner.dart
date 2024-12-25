import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            color: Colors.grey[800],
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Text(
              'Hello, this clone of VPNIFY UI it is nice to have fun with it.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white54),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
