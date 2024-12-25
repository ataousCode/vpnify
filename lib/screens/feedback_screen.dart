import 'package:flutter/material.dart';
import '../../widgets/feedback/feedback_form.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Give Feedback'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.cyan),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const FeedbackForm(),
    );
  }
}