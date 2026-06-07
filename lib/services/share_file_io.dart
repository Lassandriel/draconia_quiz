import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

/// Schreibt die Bytes in eine temporäre Datei und liefert ein XFile mit Pfad
/// (Android/Desktop benötigen einen echten Dateipfad zum Teilen).
Future<XFile> saveShareFile(Uint8List bytes) async {
  final dir = await getTemporaryDirectory();
  final path = '${dir.path}/draconia_result.png';
  await File(path).writeAsBytes(bytes, flush: true);
  return XFile(path, mimeType: 'image/png');
}
