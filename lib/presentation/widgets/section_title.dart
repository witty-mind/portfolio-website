import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String number;

  const SectionTitle({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          number,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary.withAlpha(128),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            height: 1,
            color: Theme.of(context).colorScheme.secondary.withAlpha(51),
          ),
        ),
      ],
    );
  }
}
