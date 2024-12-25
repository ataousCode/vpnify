import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key});

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'How would you rate our app?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return IconButton(
              onPressed: () => setState(() => _rating = index + 1),
              icon: Icon(
                index < _rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 40,
              ),
            );
          }),
        ),
      ],
    );
  }
}