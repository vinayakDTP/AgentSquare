import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryTeal = Color(0xFF004F53);
  static const Color accentTeal = Color(0xFF1C7C7D);
  static const Color lightTealBg = Color(0xFFE6F0F0);
  static const Color surfaceWhite = Color(0xFFFFFFFF);
  static const Color backgroundWhite = Color(0xFFF8FBFB);
  static const Color darkText = Color(0xFF111827);
  static const Color mutedText = Color(0xFF6B7280);
  static const Color warningRed = Color(0xFFDC2626);
  static const Color successGreen = Color(0xFF10B981);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryTeal,
      scaffoldBackgroundColor: backgroundWhite,
      colorScheme: ColorScheme.light(
        primary: primaryTeal,
        secondary: accentTeal,
        surface: surfaceWhite,
        error: warningRed,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundWhite,
        elevation: 0,
        iconTheme: IconThemeData(color: darkText),
        titleTextStyle: GoogleFonts.plusJakartaSans(
          color: darkText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.plusJakartaSans(
          color: darkText,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: GoogleFonts.plusJakartaSans(
          color: darkText,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: GoogleFonts.plusJakartaSans(
          color: darkText,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: GoogleFonts.plusJakartaSans(
          color: darkText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: GoogleFonts.plusJakartaSans(
          color: darkText,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.inter(
          color: darkText,
          fontSize: 16,
        ),
        bodyMedium: GoogleFonts.inter(
          color: darkText,
          fontSize: 14,
        ),
        bodySmall: GoogleFonts.inter(
          color: mutedText,
          fontSize: 12,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryTeal,
        foregroundColor: surfaceWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 4,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surfaceWhite,
        selectedItemColor: primaryTeal,
        unselectedItemColor: mutedText,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400),
      ),
      cardTheme: const CardThemeData(
        color: surfaceWhite,
        elevation: 0,
        margin: EdgeInsets.zero,
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.withOpacity(0.2),
        thickness: 1,
      ),
    );
  }
}
