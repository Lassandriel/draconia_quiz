import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../generated/app_localizations.dart';

import '../main.dart';
import '../services/audio_service.dart';

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
              'assets/images/app/quiz_background.png',
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Mute
                      _IconBtn(
                        icon: AudioService.instance.muted
                            ? Icons.volume_off
                            : Icons.volume_up,
                        onTap: () async {
                          await AudioService.instance.toggleMute();
                          setState(() {});
                        },
                      ),
                      // Sprache + Settings
                      Row(
                        children: [
                          _LangButton(
                              label: 'DE', locale: const Locale('de')),
                          const SizedBox(width: 8),
                          _LangButton(
                              label: 'EN', locale: const Locale('en')),
                          const SizedBox(width: 8),
                          _IconBtn(
                            icon: Icons.settings,
                            onTap: () => context.go('/settings'),
                          ),
                        ],
                      ),
                    ],
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

class _LangButton extends StatelessWidget {
  final String label;
  final Locale locale;

  const _LangButton({required this.label, required this.locale});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => DraconiaApp.setLocale(context, locale),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFCDA84D)),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Color(0xFFCDA84D),
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
