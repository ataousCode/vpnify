import 'package:flutter/material.dart';
import 'package:vpnify/auth/register_screen.dart';
import 'package:vpnify/screens/about_screen.dart';
import 'package:vpnify/screens/feedback_screen.dart';
import 'package:vpnify/screens/rate_app_screen.dart';
import 'package:vpnify/screens/settings_screen.dart';
import 'package:vpnify/screens/telegram_screen.dart';
import 'package:vpnify/screens/vote_location_screen.dart';
import 'package:vpnify/widgets/dialogs/help_dialog.dart';

import '../../screens/refer_screen.dart';
import '../dialogs/appearance_dialog.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isHighlighted;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: isHighlighted ? Colors.purple : Colors.white70,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isHighlighted ? Colors.purple : Colors.white70,
          fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {
        if (title == 'Dark Mode') {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => const AppearanceDialog(),
          );
        } else if (title == 'Help') {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => const HelpDialog(),
          );
        }
        else if (title == 'Refer A Friend') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ReferScreen(),
            ),
          );
        }
        else if (title == 'Rate App') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RateAppScreen(),
            ),
          );
        }//Vote For New Location
        else if (title == 'Settings') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SettingsScreen(),
            ),
          );
        }
        else if (title == 'Vote For New Location') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VoteLocationScreen(),
            ),
          );
        }
        else if (title == 'Join Telegram Group') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelegramScreen(),
            ),
          );
        }//Give Feedback
        else if (title == 'Give Feedback') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FeedbackScreen(),
            ),
          );
        }
        else if (title == 'About us') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutScreen(),
            ),
          );
        }
        else if (title == 'Logout') {
          // Implement logout logic here
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterScreen(),
            ),
          );
        }
      },
    );
  }
}
