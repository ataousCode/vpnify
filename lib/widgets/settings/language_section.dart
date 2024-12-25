import 'package:flutter/material.dart';

class LanguageSection extends StatefulWidget {
  const LanguageSection({super.key});

  @override
  State<LanguageSection> createState() => _LanguageSectionState();
}

class _LanguageSectionState extends State<LanguageSection> {
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Language',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            RadioListTile(
              value: 'English',
              groupValue: selectedLanguage,
              onChanged: (value) => setState(() => selectedLanguage = value!),
              title: const Text('English'),
              activeColor: Colors.cyan,
            ),
            RadioListTile(
              value: 'French',
              groupValue: selectedLanguage,
              onChanged: (value) => setState(() => selectedLanguage = value!),
              title: const Text('French'),
              activeColor: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}