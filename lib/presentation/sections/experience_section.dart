import 'package:flutter/material.dart';
import '../../../data/content/content.dart';
import '../../../data/models/models.dart';
import '../widgets/section_title.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(number: "01", title: "Experience"),
        const SizedBox(height: 60),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: PortfolioContent.experience.length,
          itemBuilder: (context, index) {
            return _ExperienceRow(experience: PortfolioContent.experience[index]);
          },
        ),
      ],
    );
  }
}

class _ExperienceRow extends StatelessWidget {
  final Experience experience;

  const _ExperienceRow({required this.experience});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white.withAlpha(13)),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left: Company & Period
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.company,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  experience.period,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Right: Role & Details
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.role,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                ...experience.responsibilities.map((r) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    r,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
