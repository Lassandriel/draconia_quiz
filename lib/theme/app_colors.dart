import 'package:flutter/painting.dart';

/// Zentrale Farbpalette der App. Einzige Quelle der Wahrheit — Screens und
/// Theme referenzieren ausschließlich diese Konstanten, statt Hex-Werte zu
/// wiederholen.
abstract final class AppColors {
  /// Gold-Akzent (Primärfarbe, Buttons, Icons, Rahmen-Highlights).
  static const Color primary = Color(0xFFCDA84D);

  /// Tiefdunkler App-Hintergrund.
  static const Color background = Color(0xFF0D0A1A);

  /// Karten- und Flächenhintergrund.
  static const Color surface = Color(0xFF1A1530);

  /// Gedrückter Karten-Zustand.
  static const Color surfacePressed = Color(0xFF2A2040);

  /// Rahmen / Trennlinien.
  static const Color border = Color(0xFF3A2D5A);

  /// Heller Fließtext / Vordergrund auf dunklem Grund.
  static const Color onBackground = Color(0xFFE8DFC0);

  /// Gedämpfter Sekundärtext.
  static const Color textMuted = Color(0xFF9B8C6E);

  /// Endfarbe des Fallback-Hintergrund-Gradienten.
  static const Color backgroundGradientEnd = Color(0xFF1A0A2E);

  /// Stark transparenter Versions-/Hinweistext.
  static const Color textFaint = Color(0x66E8DFC0);

  /// Overlay des Sliders (Primärfarbe, transparent).
  static const Color sliderOverlay = Color(0x33CDA84D);
}
