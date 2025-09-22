import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// App Text Styles - Unified typography system
abstract class AppTextStyles {
  // --------------------
  // 🔹 Headings
  // --------------------

  /// Heading 1 - Regular
  static TextStyle heading1Regular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Heading 1 - Bold
  static TextStyle heading1Bold({Color? color}) => GoogleFonts.cairo(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Heading 2 - Regular
  static TextStyle heading2Regular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 40,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Heading 2 - Bold
  static TextStyle heading2Bold({Color? color}) => GoogleFonts.cairo(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Heading 3 - Regular
  static TextStyle heading3Regular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 33,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Heading 3 - Bold
  static TextStyle heading3Bold({Color? color}) => GoogleFonts.cairo(
    fontSize: 33,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Heading 4 - Regular
  static TextStyle heading4Regular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Heading 4 - Bold
  static TextStyle heading4Bold({Color? color}) => GoogleFonts.cairo(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Heading 5 - Regular
  static TextStyle heading5Regular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 23,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Heading 5 - Bold
  static TextStyle heading5Bold({Color? color}) => GoogleFonts.cairo(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: color,
  );

  // --------------------
  // 🔹 Body
  // --------------------

  /// Body Large - Regular
  static TextStyle bodyLargeRegular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 19,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Body Large - Bold
  static TextStyle bodyLargeBold({Color? color}) => GoogleFonts.cairo(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Body Basa - Regular
  static TextStyle bodyBasaRegular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Body Basa - Bold
  static TextStyle bodyBasaBold({Color? color}) => GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Body Small - Regular
  static TextStyle bodySmallRegular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Body Small - Bold
  static TextStyle bodySmallBold({Color? color}) => GoogleFonts.cairo(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: color,
  );

  /// Body X-Small - Regular
  static TextStyle bodyXSmallRegular({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: color,
      );

  /// Body X-Small - Bold
  static TextStyle bodyXSmallBold({Color? color}) =>
      GoogleFonts.cairo(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        color: color,
      );
}
