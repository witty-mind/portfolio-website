import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
import 'presentation/pages/home_page.dart';

class _NoScrollbarScrollBehavior extends MaterialScrollBehavior {
  const _NoScrollbarScrollBehavior();

  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) {
    // Return the child directly to prevent wrapping it with a Scrollbar
    return child;
  }
}

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyPortfolioApp(),
    ),
  );
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const _NoScrollbarScrollBehavior(),
      title: 'Debasish Kumar Das | Senior Software Engineer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme, // Force Dark theme for this specific design
      home: const HomePage(),
    );
  }
}
