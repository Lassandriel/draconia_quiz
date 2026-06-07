import 'package:flutter_test/flutter_test.dart';

import 'package:draconia_quiz/models/dragon_type.dart';
import 'package:draconia_quiz/services/share_card.dart';

void main() {
  testWidgets(
    'renderShareCard erzeugt ein nicht-leeres PNG',
    (tester) async {
      // runAsync: echte Async-Operationen (Bild dekodieren, toImage/toByteData)
      // laufen außerhalb des Fake-Clocks der Testumgebung.
      await tester.runAsync(() async {
        final bytes = await renderShareCard(ShareCardData(
          imageAsset: DragonSubtype.grossdracheSonne.imagePath,
          elementIconAsset: DragonSubtype.grossdracheSonne.elementIconPath,
          label: 'Your Result',
          name: 'Sun Dragon',
          subtitle: 'Great Dragon · Light',
          brand: 'Draconia Quiz',
        ));

        // Gültiges PNG beginnt mit der Signatur 0x89 'P' 'N' 'G'
        expect(bytes.length, greaterThan(1000));
        expect(bytes.sublist(0, 4), [0x89, 0x50, 0x4E, 0x47]);
      });
    },
    timeout: const Timeout(Duration(seconds: 30)),
  );
}
