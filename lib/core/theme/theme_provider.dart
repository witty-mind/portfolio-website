import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // For this specific design, we default to Dark Mode to match the Dribbble shot.
  ThemeMode _themeMode = ThemeMode.dark;
  ThemeMode get themeMode => _themeMode;
}
