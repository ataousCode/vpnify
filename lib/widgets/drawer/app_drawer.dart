// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'drawer_header.dart';
import 'drawer_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const CustomDrawerHeader(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                DrawerItem(
                  icon: Icons.workspace_premium,
                  title: 'Buy Premium',
                  isHighlighted: true,
                ),
                DrawerItem(icon: Icons.share, title: 'Refer A Friend'),
                DrawerItem(icon: Icons.feedback, title: 'Give Feedback'),
                DrawerItem(icon: Icons.star, title: 'Rate App'),
                DrawerItem(
                    icon: Icons.how_to_vote, title: 'Vote For New Location'),
                DrawerItem(icon: Icons.telegram, title: 'Join Telegram Group'),
                DrawerItem(icon: Icons.settings, title: 'Settings'),
                DrawerItem(icon: Icons.account_box_outlined, title: 'About us'),
                DrawerItem(icon: Icons.help, title: 'Help'),
                DrawerItem(icon: Icons.dark_mode, title: 'Dark Mode'),
                DrawerItem(icon: Icons.logout, title: 'Logout'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'No active subscription',
                  style: TextStyle(color: Colors.white54),
                ),
                SizedBox(height: 8),
                Text(
                  'Version 2.3.27',
                  style: TextStyle(color: Colors.white54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
