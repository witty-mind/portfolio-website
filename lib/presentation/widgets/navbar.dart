import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/utils/utils.dart';
import '../../../core/constants/constants.dart';

class FloatingNavBar extends StatelessWidget {
  final VoidCallback onContactClick;
  final VoidCallback onWorkClick;
   final VoidCallback onHomeClick;

  const FloatingNavBar({super.key, required this.onContactClick, required this.onWorkClick, required this.onHomeClick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E).withAlpha(204),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white.withAlpha(26)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(51),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _NavItem(title: "Home", onTap: onHomeClick), // Scrolls to top implicitly
            const SizedBox(width: 24),
            _NavItem(title: "Work", onTap: onWorkClick),
            const SizedBox(width: 24),
            _NavItem(title: "Contact", onTap: onContactClick),
            Container(
              height: 20,
              width: 1,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              color: Colors.white.withAlpha(51),
            ),
            _SocialIcon(icon: FontAwesomeIcons.linkedin, url: AppConstants.linkedinUrl),
            const SizedBox(width: 20),
            _SocialIcon(icon: FontAwesomeIcons.github, url: AppConstants.githubUrl),
            const SizedBox(width: 20),
            _SocialIcon(icon: FontAwesomeIcons.medium, url: AppConstants.mediumUrl),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NavItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Wrap with Material so InkWell gestures work reliably and add
    // padding to increase the effective tap target on desktop/web.
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        hoverColor: Colors.white10,
        mouseCursor: SystemMouseCursors.click,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  const _SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    // Add padding to increase hit area
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => AppUtils.launchURL(url),
        borderRadius: BorderRadius.circular(8),
        hoverColor: Colors.white10,
        mouseCursor: SystemMouseCursors.click,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: FaIcon(icon, size: 18, color: Colors.white70),
        ),
      ),
    );
  }
}
