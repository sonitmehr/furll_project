import 'package:flutter/material.dart';

class TColor {
  static Color hexToColor(String hexColor) {
    // Remove the '#' symbol if present
    hexColor = hexColor.replaceAll("#", "");

    // Parse the hexadecimal string to an integer
    int colorValue = int.parse(hexColor, radix: 16);

    // Create a Color object using the parsed value
    return Color(colorValue | 0xFF000000);
  }

  static Color get primary => hexToColor("001718");
  static Color get primary0 => hexToColor("001718");
  static Color get primary5 => hexToColor("7E59E7");
  static Color get primary10 => hexToColor("64748B");
  static Color get primary20 => const Color(0xff924EFF);
  static Color get primary500 => const Color(0xff7722FF);

  static Color get secondary => hexToColor("CECECE");
  static Color get secondary0 => hexToColor("E5E7EB");
  static Color get secondary10 => hexToColor("E5E7EB").withOpacity(0.4);
  static Color get secondary50 => hexToColor("E5E7EB").withOpacity(0.3);
  static Color get secondary100 => hexToColor("e3422b");

  static Color get secondaryG => const Color(0xff00FAD9);
  static Color get secondaryG50 => const Color(0xff7DFFEE);

  static Color get gray => const Color(0xff0E0E12);
  static Color get gray80 => const Color(0xff1C1C23);
  static Color get gray70 => const Color(0xff353542);
  static Color get gray60 => const Color(0xff4E4E61);
  static Color get gray50 => const Color(0xff666680);
  static Color get gray40 => const Color(0xff83839C);
  static Color get gray30 => const Color(0xffA2A2B5);
  static Color get gray20 => const Color(0xffC1C1CD);
  static Color get gray10 => const Color(0xffE0E0E6);

  static Color get border => const Color(0xffCFCFFC);
  static Color get primaryText => Colors.white;
  static Color get secondaryText => gray60;

  static Color get white => Colors.white;

  static Color get chatSend => hexToColor("AEC0E9");
  static Color get chatRecieve => hexToColor("8A8ADD");
}

class Constants {
  static String get currencySymbol => "₹";
}
