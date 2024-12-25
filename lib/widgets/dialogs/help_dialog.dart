import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpDialog extends StatelessWidget {
  const HelpDialog({super.key});

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _sendEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Help & Support',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 24),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Call Support'),
            subtitle: const Text('+1 (555) 123-4567'),
            onTap: () => _makePhoneCall('+15551234567'),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Email Support'),
            subtitle: const Text('support@vpnify.com'),
            onTap: () => _sendEmail('support@vpnify.com'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Available 24/7',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}