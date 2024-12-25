import 'package:flutter/material.dart';

import '../screens/refer_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const SizedBox(),
          //todo: fix this later
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.cyan),
            onPressed: () => Navigator.pop(context),
          ),
          const Text(
            'Cloud Premium',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.link, color: Colors.cyan),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReferScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
