import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../generated/app_localizations.dart';

import '../data/results.dart';
import '../models/dragon_type.dart';
import '../services/audio_service.dart';
import '../services/settings_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    AudioService.instance.playMusic(AudioAssets.musicHome);
    PackageInfo.fromPlatform().then((info) {
      setState(() => _version = info.version);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/app/quiz_background.webp',
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF0D0A1A), Color(0xFF1A0A2E)],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withValues(alpha: 0.55)),
          ),
          SafeArea(
            child: Column(
              children: [
                // Top bar
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: _IconBtn(
                      icon: Icons.settings,
                      onTap: () => context.go('/settings'),
                    ),
                  ),
                ),
                const Spacer(),
                // Titel
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Text(
                        l10n.appTitle,
                        style: theme.textTheme.displayLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        l10n.tagline,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFFE8DFC0)
                              .withValues(alpha: 0.8),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 64),
                ElevatedButton(
                  onPressed: () {
                    AudioService.instance.playSfx(AudioAssets.sfxButton);
                    context.go('/quiz');
                  },
                  child: Text(l10n.startButton),
                ),
                const Spacer(),
                // Letztes Ergebnis
                _LastResultBadge(),
                const SizedBox(height: 12),
                // Version
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    _version.isEmpty ? '' : 'v$_version',
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0x66E8DFC0),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LastResultBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lastResult = SettingsService.instance.lastResult;
    if (lastResult == null) return const SizedBox.shrink();

    final isDE = Localizations.localeOf(context).languageCode == 'de';
    final subtype = DragonSubtype.values.firstWhere(
      (e) => e.name == lastResult,
      orElse: () => DragonSubtype.grossdracheFeuer,
    );
    final result = dragonResults[subtype];
    if (result == null) return const SizedBox.shrink();

    final name = isDE ? result.nameDe : result.nameEn;

    return Semantics(
      button: true,
      label: isDE ? 'Letztes Ergebnis: $name. Tippen zum Anzeigen.' : 'Last result: $name. Tap to view.',
      child: GestureDetector(
      onTap: () => GoRouter.of(context).go('/result/$lastResult'),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1530),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFF3A2D5A)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.history, color: Color(0xFFCDA84D), size: 14),
            const SizedBox(width: 6),
            Text(
              isDE ? 'Zuletzt: $name' : 'Last: $name',
              style: const TextStyle(
                fontFamily: 'Outfit',
                color: Color(0xFFCDA84D),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class _IconBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _IconBtn({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFCDA84D)),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, color: const Color(0xFFCDA84D), size: 18),
      ),
    );
  }
}

