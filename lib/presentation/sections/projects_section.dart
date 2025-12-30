import 'package:flutter/material.dart';
import '../../../data/content/content.dart';
import '../../../data/models/models.dart';
import '../../../core/utils/utils.dart';
import '../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(number: "02", title: "Selected Work"),
        const SizedBox(height: 60),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 600,
            childAspectRatio: 1.1,
            crossAxisSpacing: 32,
            mainAxisSpacing: 32,
          ),
          itemCount: PortfolioContent.projects.length,
          itemBuilder: (context, index) {
            return _ProjectCard(project: PortfolioContent.projects[index]);
          },
        ),
      ],
    );
  }
}

class _ProjectCard extends StatefulWidget {
  final Project project;

  const _ProjectCard({required this.project});

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.project.link != null) {
          AppUtils.launchURL(widget.project.link!);
        }
      },
      onHover: (val) => setState(() => isHovered = val),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: const Color(0xFF101010),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isHovered ? Colors.white.withAlpha(128) : Colors.white.withAlpha(26),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(26),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    "Mobile / AI",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withAlpha(204),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_outward,
                  color: isHovered ? Colors.white : Colors.white30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.project.title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 28),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.project.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                Text(
                  widget.project.techStack,
                  style: const TextStyle(
                    fontFamily: 'Courier',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
