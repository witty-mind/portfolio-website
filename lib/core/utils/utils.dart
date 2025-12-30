import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class AppUtils {
  static Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $url');
    }
  }

  static Future<void> launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'debasish.das.naukri@gmail.com',
      query: 'subject=Portfolio Inquiry',
    );
    if (!await launchUrl(emailLaunchUri)) {
      debugPrint('Could not launch email');
    }
  }
}
