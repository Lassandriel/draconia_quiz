import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../generated/app_localizations.dart';

import '../data/localized_text.dart';
import '../data/results.dart';
import '../models/dragon_type.dart';
import '../services/audio_service.dart';
import '../services/settings_service.dart';
import '../theme/app_colors.dart';

// Ziel des Feedback-Links: direkt das Formular für ein neues GitHub-Issue.
const _bugReportUrl = 'https://github.com/Lassandriel/draconia_quiz/issues/new';

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
      if (!mounted) return;
      setState(() => _version = info.version);
    });
  }

  Future<void> _reportIssue() async {
    final messenger = ScaffoldMessenger.of(context);
    final errorMsg = AppLocalizations.of(context)!.bugReportError;
    final ok = await launchUrl(
      Uri.parse(_bugReportUrl),
      mode: LaunchMode.externalApplication,
    );
    if (!mounted) return;
    if (!ok) {
      messenger.showSnackBar(SnackBar(content: Text(errorMsg)));
    }
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
                    colors: [
                      AppColors.background,
                      AppColors.backgroundGradientEnd,
                    ],
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
                    alignment: AlignmentDirectional.topEnd,
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
                          color: AppColors.onBackground.withValues(alpha: 0.8),
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
                // Feedback: Bugs / Übersetzungsfehler melden (öffnet GitHub)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Semantics(
                    button: true,
                    link: true,
                    child: GestureDetector(
                      onTap: _reportIssue,
                      child: Text(
                        l10n.reportProblemHome,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Outfit',
                          color: AppColors.primary,
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Version
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    _version.isEmpty ? '' : 'v$_version',
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      color: AppColors.textFaint,
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

    final subtype = DragonSubtype.values.firstWhere(
      (e) => e.name == lastResult,
      orElse: () => DragonSubtype.grossdracheFeuer,
    );
    final result = dragonResults[subtype];
    if (result == null) return const SizedBox.shrink();

    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    final name = result.name.resolve(locale);

    return Semantics(
      button: true,
      label: l10n.lastResultSemantics(name),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).go('/result/$lastResult'),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.history, color: AppColors.primary, size: 14),
              const SizedBox(width: 6),
              Text(
                l10n.lastResultLabel(name),
                style: const TextStyle(
                  fontFamily: 'Outfit',
                  color: AppColors.primary,
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
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, color: AppColors.primary, size: 18),
      ),
    );
  }
}
