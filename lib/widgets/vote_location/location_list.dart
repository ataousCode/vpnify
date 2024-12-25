import 'package:flutter/material.dart';

class LocationList extends StatefulWidget {
  const LocationList({super.key});

  @override
  State<LocationList> createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  final List<Map<String, dynamic>> _locations = [
    {'name': 'Japan', 'votes': 245},
    {'name': 'Singapore', 'votes': 189},
    {'name': 'South Korea', 'votes': 156},
    {'name': 'Australia', 'votes': 134},
    {'name': 'New Zealand', 'votes': 98},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _locations.length,
      itemBuilder: (context, index) {
        final location = _locations[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: ListTile(
            title: Text(location['name']),
            subtitle: Text('${location['votes']} votes'),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {
                  location['votes']++;
                });
              },
              child: const Text('Vote'),
            ),
          ),
        );
      },
    );
  }
}