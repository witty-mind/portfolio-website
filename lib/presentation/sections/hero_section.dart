import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import '../../../data/content/content.dart';
import '../../../core/utils/utils.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onScrollToWork;
  const HeroSection({super.key, required this.onScrollToWork});

  @override
  Widget build(BuildContext context) {
  // Responsive check removed because the returned value was unused.
  // final isDesktop = Responsive.isDesktop(context);
    
    return Container(
      constraints: const BoxConstraints(minHeight: 800),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 800),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary.withAlpha(77)),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                "Based in Pune, India",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          FadeInUp(
            duration: const Duration(milliseconds: 1000),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "I'm ${PortfolioContent.name}, a ",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  TextSpan(
                    text: PortfolioContent.role,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Colors.grey[600], // Muted part
                    ),
                  ),
                  TextSpan(
                    text: ".\n${PortfolioContent.headline}",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          FadeInUp(
            delay: const Duration(milliseconds: 400),
            child: SizedBox(
              child: Text(
                PortfolioContent.summary,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          const SizedBox(height: 48),
          FadeInUp(
            delay: const Duration(milliseconds: 600),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ElevatedButton(
                  onPressed: onScrollToWork,
                  child: const Text("See my work"),
                ),
                OutlinedButton(
                  onPressed: () => AppUtils.launchEmail(),
                  child: const Text("Contact Me"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
