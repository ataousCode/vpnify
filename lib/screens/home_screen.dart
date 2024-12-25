// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../widgets/home/connection_status.dart';
import '../widgets/home/connect_button.dart';
import '../widgets/home/server_selection.dart';
import '../widgets/home/app_header.dart';
import '../widgets/home/ad_banner.dart';
import '../widgets/drawer/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const AppDrawer(),
      body: const SafeArea(
        child: Column(
          children: [
            AppHeader(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ConnectionStatus(),
                  ConnectButton(),
                  ServerSelection(),
                ],
              ),
            ),
            AdBanner(),
          ],
        ),
      ),
    );
  }
}
