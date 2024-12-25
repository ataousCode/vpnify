import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationSection extends StatefulWidget {
  const NotificationSection({super.key});

  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {
  bool pushNotifications = true;
  bool emailNotifications = true;
  bool connectionAlerts = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notifications',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            _buildSwitchRow(
              'Push Notifications',
              pushNotifications,
                  (value) => setState(() => pushNotifications = value),
            ),
            _buildSwitchRow(
              'Email Notifications',
              emailNotifications,
                  (value) => setState(() => emailNotifications = value),
            ),
            _buildSwitchRow(
              'Connection Alerts',
              connectionAlerts,
                  (value) => setState(() => connectionAlerts = value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchRow(String title, bool value, Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.cyan,
          ),
        ],
      ),
    );
  }
}