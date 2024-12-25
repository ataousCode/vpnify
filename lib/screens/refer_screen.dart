// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ReferScreen extends StatelessWidget {
  const ReferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.cyan),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Refer A Friend',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              'Receive 3 days of\nPremium for Free',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            Icon(
              Icons.share_outlined,
              size: 120,
              color: Colors.white.withOpacity(0.9),
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _buildStep('Share your Refer-Link with\nyour friends', true),
                  const SizedBox(height: 16),
                  _buildStep('They open the link and install\nvpnify', false),
                  const SizedBox(height: 16),
                  _buildStep(
                      'Restart the app and enjoy your 3\ndays of Premium for Free✨',
                      false),
                ],
              ),
            ),
            const Spacer(),
            Text(
              'You will only receive a reward if you share a link with people who have never been previously invited through such a link.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                'Share Link',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String text, bool isCyan) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: isCyan ? Colors.cyan : Colors.purple,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: isCyan ? Colors.cyan : Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
