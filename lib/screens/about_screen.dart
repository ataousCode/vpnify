import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.cyan),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.check,
                size: 60,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'VPNIFY',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Version 2.3.27 (Build 200082)',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'vpnify is free service to secure your connection and preventing censorship.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white24),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.apple, color: Colors.white),
                  SizedBox(width: 8),
                  Text('App Store', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () => _launchURL('https://vpnifyapp.com/tos'),
              child: const Text(
                'Terms of Service',
                style: TextStyle(color: Colors.cyan),
              ),
            ),
            TextButton(
              onPressed: () => _launchURL('https://vpnifyapp.com/privacy'),
              child: const Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.cyan),
              ),
            ),
          ],
        ),
      ),
    );
  }
}