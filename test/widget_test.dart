// Smoke-Test: stellt sicher, dass die App ohne Crash startet
// und der Home-Screen mit Start-Button gerendert wird.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:draconia_quiz/main.dart';
import 'package:draconia_quiz/services/settings_service.dart';

void main() {
  testWidgets('App startet und zeigt den Home-Screen', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await SettingsService.instance.init();

    await tester.pumpWidget(const DraconiaApp());
    await tester.pumpAndSettle();

    // Start-Button muss vorhanden sein (DE oder EN).
    final startButton = find.byType(ElevatedButton);
    expect(startButton, findsOneWidget);
  });
}
