import 'dart:typed_data';

import 'package:share_plus/share_plus.dart';

/// Im Web wird direkt aus den Bytes geteilt (kein Dateisystem).
Future<XFile> saveShareFile(Uint8List bytes) async {
  return XFile.fromData(
    bytes,
    mimeType: 'image/png',
    name: 'draconia_result.png',
  );
}
