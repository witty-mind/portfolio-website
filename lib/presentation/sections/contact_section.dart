import 'package:flutter/material.dart';
import '../../../core/utils/utils.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(number: "04", title: "Contact"),
        const SizedBox(height: 60),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(60),
          decoration: BoxDecoration(
            color: const Color(0xFF101010),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: Colors.white.withAlpha(26)),
          ),
          child: Column(
            children: [
              Text(
                "Let's build something future-proof.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 16),
              const Text(
                "Open for Engineering Leadership and GenAI Opportunities.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => AppUtils.launchEmail(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                ),
                child: const Text("Get in Touch"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
