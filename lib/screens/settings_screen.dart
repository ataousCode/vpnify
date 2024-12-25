import 'package:flutter/material.dart';
import '../../widgets/settings/profile_section.dart';
import '../../widgets/settings/security_section.dart';
import '../../widgets/settings/notification_section.dart';
import '../../widgets/settings/language_section.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.cyan),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProfileSection(),
            SizedBox(height: 24),
            SecuritySection(),
            SizedBox(height: 24),
            NotificationSection(),
            SizedBox(height: 24),
            LanguageSection(),
          ],
        ),
      ),
    );
  }
}