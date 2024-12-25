import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vpnify/auth/register_screen.dart';
import 'package:vpnify/screens/premium_screen.dart';
import 'package:vpnify/theme/theme_provider.dart';

import 'theme/app_theme.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
       create: (_) => ThemeProvider(),
        child: const VPNMainApp(),
      ),
  );
}

class VPNMainApp extends StatelessWidget {
  const VPNMainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          title: 'VPNIFY',
          theme: themeProvider.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
          home: const RegisterScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
