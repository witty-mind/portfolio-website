import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Premium Dark Palette
  static const Color background = Color(0xFF050505); // Near Black
  static const Color surface = Color(0xFF121212); // Dark Grey
  static const Color surfaceLight = Color(0xFF1E1E1E); // Lighter Grey
  static const Color primary = Color(0xFFFFFFFF); // White text
  static const Color secondary = Color(0xFFA1A1AA); // Muted text
  static const Color accent = Color(0xFF3B82F6); // Subtle Blue Accent
  static const Color border = Color(0xFF27272A); // Border color

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primary,
      scaffoldBackgroundColor: background,
      fontFamily: GoogleFonts.interTight().fontFamily,
      colorScheme: const ColorScheme.dark(
        primary: primary,
        secondary: accent,
        surface: surface,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.interTight(
          color: primary,
          fontSize: 64,
          fontWeight: FontWeight.w800,
          letterSpacing: -2.0,
          height: 1.1,
        ),
        displayMedium: GoogleFonts.interTight(
          color: primary,
          fontSize: 48,
          fontWeight: FontWeight.w700,
          letterSpacing: -1.0,
        ),
        displaySmall: GoogleFonts.interTight(
          color: primary,
          fontSize: 32,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.5,
        ),
        headlineMedium: GoogleFonts.interTight(
          color: primary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.inter(
          color: secondary,
          fontSize: 18,
          height: 1.6,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.inter(
          color: secondary,
          fontSize: 16,
          height: 1.5,
          fontWeight: FontWeight.w400,
        ),
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: border, width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: background,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          side: const BorderSide(color: border),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
