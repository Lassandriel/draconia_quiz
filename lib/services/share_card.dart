import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart' show rootBundle;
import 'package:share_plus/share_plus.dart';

import 'share_file_web.dart' if (dart.library.io) 'share_file_io.dart';

/// Inhalte für die Teilen-Karte. Alle Texte bereits lokalisiert übergeben.
class ShareCardData {
  final String imageAsset; // Drachen-Artwork (Basis)
  final String? elementIconAsset; // optionales Element-Icon
  final String label; // z. B. „Dein Ergebnis"
  final String name; // Drachenname
  final String subtitle; // z. B. „Großdrache · Licht"
  final String brand; // „Draconia Quiz"

  const ShareCardData({
    required this.imageAsset,
    required this.label,
    required this.name,
    required this.subtitle,
    required this.brand,
    this.elementIconAsset,
  });
}

// Markenfarben (gespiegelt aus AppColors, hier ohne Flutter-Material-Abhängigkeit).
const _bg = ui.Color(0xFF0D0A1A);
const _gold = ui.Color(0xFFCDA84D);
const _goldFaint = ui.Color(0x99CDA84D);
const _onBg = ui.Color(0xFFE8DFC0);

Future<ui.Image> _loadImage(String asset) async {
  final data = await rootBundle.load(asset);
  final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
  final frame = await codec.getNextFrame();
  return frame.image;
}

ui.Paragraph _paragraph(
  String text, {
  required String fontFamily,
  required double fontSize,
  required ui.Color color,
  required double maxWidth,
  ui.FontWeight fontWeight = ui.FontWeight.normal,
  double letterSpacing = 0,
}) {
  final builder = ui.ParagraphBuilder(ui.ParagraphStyle(
    textAlign: ui.TextAlign.center,
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
  ))
    ..pushStyle(ui.TextStyle(color: color, letterSpacing: letterSpacing))
    ..addText(text);
  final paragraph = builder.build()
    ..layout(ui.ParagraphConstraints(width: maxWidth));
  return paragraph;
}

/// Rendert die Teilen-Karte (1080×1080 PNG): Drachenbild oben (zugeschnitten,
/// oben verankert), darunter Name, Element und App-Branding im App-Look.
Future<Uint8List> renderShareCard(ShareCardData d) async {
  const w = 1080.0;
  const h = 1080.0;
  const imgH = 700.0;
  const pad = 64.0;
  const maxW = w - pad * 2;

  final recorder = ui.PictureRecorder();
  final canvas = ui.Canvas(recorder, const ui.Rect.fromLTWH(0, 0, w, h));

  // Hintergrund
  canvas.drawRect(
      const ui.Rect.fromLTWH(0, 0, w, h), ui.Paint()..color = _bg);

  // Drachenbild: BoxFit.cover, oben verankert
  final img = await _loadImage(d.imageAsset);
  final iw = img.width.toDouble();
  final ih = img.height.toDouble();
  final scale = math.max(w / iw, imgH / ih);
  final visibleW = w / scale;
  final visibleH = imgH / scale;
  final src = ui.Rect.fromLTWH((iw - visibleW) / 2, 0, visibleW, visibleH);
  canvas.drawImageRect(
      img, src, const ui.Rect.fromLTWH(0, 0, w, imgH), ui.Paint());

  // Verlauf vom Bild zum Hintergrund (Lesbarkeit + weicher Übergang)
  final scrim = ui.Paint()
    ..shader = ui.Gradient.linear(
      const ui.Offset(0, imgH - 240),
      const ui.Offset(0, imgH),
      const [ui.Color(0x000D0A1A), _bg],
    );
  canvas.drawRect(const ui.Rect.fromLTWH(0, imgH - 240, w, 240), scrim);

  var y = imgH + 28;

  final label = _paragraph(
    d.label.toUpperCase(),
    fontFamily: 'Outfit',
    fontSize: 26,
    fontWeight: ui.FontWeight.w600,
    color: _gold,
    maxWidth: maxW,
    letterSpacing: 3,
  );
  canvas.drawParagraph(label, ui.Offset(pad, y));
  y += label.height + 14;

  final name = _paragraph(
    d.name,
    fontFamily: 'Cinzel',
    fontSize: 62,
    fontWeight: ui.FontWeight.w700,
    color: _gold,
    maxWidth: maxW,
  );
  canvas.drawParagraph(name, ui.Offset(pad, y));
  y += name.height + 22;

  // Element-Icon zentriert (optional)
  final iconAsset = d.elementIconAsset;
  if (iconAsset != null) {
    try {
      final icon = await _loadImage(iconAsset);
      const size = 72.0;
      canvas.drawImageRect(
        icon,
        ui.Rect.fromLTWH(0, 0, icon.width.toDouble(), icon.height.toDouble()),
        ui.Rect.fromLTWH((w - size) / 2, y, size, size),
        ui.Paint(),
      );
      y += size + 16;
    } catch (_) {
      // Icon fehlt → einfach weglassen
    }
  }

  final subtitle = _paragraph(
    d.subtitle,
    fontFamily: 'Outfit',
    fontSize: 32,
    color: _onBg,
    maxWidth: maxW,
  );
  canvas.drawParagraph(subtitle, ui.Offset(pad, y));

  // App-Branding unten
  final brand = _paragraph(
    d.brand.toUpperCase(),
    fontFamily: 'Outfit',
    fontSize: 24,
    fontWeight: ui.FontWeight.w600,
    color: _goldFaint,
    maxWidth: maxW,
    letterSpacing: 4,
  );
  canvas.drawParagraph(brand, ui.Offset(pad, h - brand.height - 44));

  final picture = recorder.endRecording();
  final image = await picture.toImage(w.toInt(), h.toInt());
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
  image.dispose();
  return bytes!.buffer.asUint8List();
}

/// Rendert die Karte und öffnet das System-Teilen-Menü mit Bild + Text.
Future<void> shareResultCard({
  required ShareCardData card,
  required String text,
}) async {
  final bytes = await renderShareCard(card);
  final file = await saveShareFile(bytes);
  await Share.shareXFiles([file], text: text);
}
