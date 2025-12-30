import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../widgets/navbar.dart';
import '../sections/hero_section.dart';
import '../sections/experience_section.dart';
import '../sections/projects_section.dart';
import '../sections/blog_section.dart';
import '../sections/contact_section.dart';
import '../sections/stats_section.dart';
import '../sections/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final projectsKey = GlobalKey();
    final contactKey = GlobalKey();
    final homeKey = GlobalKey();

    void scrollToSection(GlobalKey key) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOutCubic,
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: AppConstants.maxContentWidth),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  children: [
                    const SizedBox(height: 80),
                    HeroSection(key: homeKey, onScrollToWork: () => scrollToSection(homeKey)),
                    const StatsSection(),
                    const SizedBox(height: 100),
                    const ExperienceSection(),
                    const SizedBox(height: 100),
                    Container(key: projectsKey, child: const ProjectsSection()),
                    const SizedBox(height: 100),
                    const BlogSection(),
                    const SizedBox(height: 100),
                    Container(key: contactKey, child: const ContactSection()),
                    const SizedBox(height: 80),
                    const Footer(),
                  ],
                ),
              ),
            ),
          ),
          // Floating Nav Top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: FloatingNavBar(
              onContactClick: () => scrollToSection(contactKey),
              onWorkClick: () => scrollToSection(projectsKey),
              onHomeClick: () => scrollToSection(homeKey),
            ),
          ),
        ],
      ),
    );
  }
}
