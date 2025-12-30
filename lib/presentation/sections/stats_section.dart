import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: Colors.white.withAlpha(26)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Wrap(
            spacing: 60,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _StatItem(label: "Years Experience", value: "10+"),
              _StatItem(label: "Projects Worked", value: "25+"),
              _StatItem(label: "Teams Led", value: "3"),
            ],
          ),
        ),
        Divider(color: Colors.white.withAlpha(26)),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withAlpha(128),
          ),
        ),
      ],
    );
  }
}
