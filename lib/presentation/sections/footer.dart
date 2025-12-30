import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Center(
        child: Text(
          "© 2026 Debasish Kumar Das. Crafted with Flutter.",
          style: TextStyle(
            color: Colors.white.withAlpha(77),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
