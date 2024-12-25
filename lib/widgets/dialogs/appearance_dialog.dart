import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_provider.dart';

class AppearanceDialog extends StatefulWidget {
  const AppearanceDialog({super.key});

  @override
  State<AppearanceDialog> createState() => _AppearanceDialogState();
}

class _AppearanceDialogState extends State<AppearanceDialog> {
  bool isDeviceSettings = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

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
            'Appearance',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          _buildSwitchRow(
            'Dark Mode',
            themeProvider.isDarkMode,
                (value) => themeProvider.toggleTheme(value),
          ),
          const SizedBox(height: 16),
          _buildSwitchRow(
            'Device settings',
            isDeviceSettings,
                (value) => setState(() => isDeviceSettings = value),
          ),
          const SizedBox(height: 16),
          Text(
            'Set Appearance to use the Light or Dark selection located in your device Display & Brightness settings',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildSwitchRow(String title, bool value, Function(bool) onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyLarge?.color,
            fontSize: 16,
          ),
        ),
        CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.cyan,
        ),
      ],
    );
  }
}