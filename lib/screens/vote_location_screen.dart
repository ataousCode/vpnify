import 'package:flutter/material.dart';
import '../../widgets/vote_location/location_list.dart';

class VoteLocationScreen extends StatelessWidget {
  const VoteLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vote For New Location'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const LocationList(),
    );
  }
}