import 'package:flutter/material.dart';
import '../../widgets/rate_app/rating_stars.dart';
import '../../widgets/rate_app/feedback_form.dart';

class RateAppScreen extends StatelessWidget {
  const RateAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate App'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            RatingStars(),
            SizedBox(height: 24),
            FeedbackForm(),
          ],
        ),
      ),
    );
  }
}