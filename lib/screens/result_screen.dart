import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import '../generated/app_localizations.dart';

import '../data/localized_text.dart';
import '../models/dragon_type.dart';
import '../data/results.dart';
import '../services/audio_service.dart';
import '../services/share_card.dart';
import '../theme/app_colors.dart';

// Permanenter Play-Store-Link (basiert auf dem unveränderlichen Package-
// Namen). Funktioniert ab Veröffentlichung automatisch öffentlich — muss
// nicht mehr geändert werden.
const _shareUrl =
    'https://play.google.com/store/apps/details?id=com.draconia.draconia_quiz';

class ResultScreen extends StatefulWidget {
  final DragonSubtype subtype;

  const ResultScreen({super.key, required this.subtype});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    AudioService.instance.playMusic(AudioAssets.musicResult);
    AudioService.instance.playSfx(AudioAssets.sfxResult);

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  Future<void> _share(String name, String species, String element) async {
    final l10n = AppLocalizations.of(context)!;
    final messenger = ScaffoldMessenger.of(context);
    final errorText = l10n.shareError;
    final text = l10n.shareText(name, element, _shareUrl);
    final card = ShareCardData(
      imageAsset: widget.subtype.imagePath,
      elementIconAsset: widget.subtype.elementIconPath,
      label: l10n.yourResult,
      name: name,
      subtitle: '$species · $element',
      brand: 'Draconia Quiz',
    );
    try {
      // Bevorzugt: gestaltete Karte (Bild + Text)
      await shareResultCard(card: card, text: text);
    } catch (_) {
      // Fallback 1: nur Text teilen
      try {
        await Share.share(text);
      } catch (_) {
        // Fallback 2: dem Nutzer Bescheid geben
        if (!mounted) return;
        messenger.showSnackBar(SnackBar(content: Text(errorText)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final subtype = widget.subtype;
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    final result = dragonResults[subtype]!;
    final theme = Theme.of(context);
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    final species = result.species.resolve(locale);
    final name = result.name.resolve(locale);
    final element = result.element.resolve(locale);
    final description = result.description.resolve(locale);
    final rarity = result.rarity.resolve(locale);

    final scrollView = CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 520,
          pinned: true,
          backgroundColor: AppColors.background,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.primary),
            tooltip: l10n.back,
            onPressed: () => context.go('/'),
          ),
          actions: [
            StatefulBuilder(
              builder: (_, setIconState) => IconButton(
                icon: Icon(
                  AudioService.instance.muted
                      ? Icons.volume_off
                      : Icons.volume_up,
                  color: AppColors.primary,
                ),
                tooltip: AudioService.instance.muted ? l10n.unmute : l10n.mute,
                onPressed: () async {
                  await AudioService.instance.toggleMute();
                  if (!mounted) return;
                  setIconState(() {});
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.share, color: AppColors.primary),
              tooltip: l10n.shareResult,
              onPressed: () => _share(name, species, element),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Semantics(
                  label: l10n.dragonImageSemantics(name),
                  excludeSemantics: true,
                  child: Image.asset(
                    result.subtype.imagePath,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    errorBuilder: (_, _, _) => Container(
                      color: AppColors.surface,
                      child: const Icon(
                        Icons.image_not_supported,
                        color: AppColors.border,
                        size: 80,
                      ),
                    ),
                  ),
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, AppColors.background],
                      stops: [0.5, 1.0],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Semantics(
            label: l10n.resultSemantics(
              name,
              species,
              element,
              rarity,
              description,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.yourResult,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.primary,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(name, style: theme.textTheme.displayLarge),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      _InfoChip(label: l10n.species, value: species),
                      const SizedBox(width: 12),
                      _InfoChip(label: l10n.rarity, value: rarity),
                    ],
                  ),
                  const SizedBox(height: 28),
                  _ElementIconRow(subtype: subtype, elementName: element),
                  const SizedBox(height: 28),
                  Text(description, style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        AudioService.instance.playSfx(AudioAssets.sfxButton);
                        context.go('/quiz');
                      },
                      child: Text(l10n.restartButton),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        AudioService.instance.playSfx(AudioAssets.sfxButton);
                        context.go('/');
                      },
                      child: Text(
                        l10n.back,
                        style: const TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      body: reduceMotion
          ? scrollView
          : FadeTransition(opacity: _fadeAnimation, child: scrollView),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final String value;

  const _InfoChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 11,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              color: AppColors.onBackground,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _ElementIconRow extends StatelessWidget {
  final DragonSubtype subtype;
  final String elementName;

  const _ElementIconRow({required this.subtype, required this.elementName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Semantics(
          label: elementName,
          excludeSemantics: true,
          child: SizedBox(
            width: 48,
            height: 48,
            child: Image.asset(
              subtype.elementIconPath,
              fit: BoxFit.contain,
              errorBuilder: (_, _, _) => const Icon(
                Icons.auto_awesome,
                color: AppColors.primary,
                size: 36,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // Doppel-Elemente (z. B. „Natur & Tarnung") als zwei getrennte
        // Badges nebeneinander; einfache Elemente als ein Badge.
        Expanded(
          child: ExcludeSemantics(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final part in elementName.split(' & '))
                  _ElementBadge(part),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ElementBadge extends StatelessWidget {
  final String text;

  const _ElementBadge(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Cinzel',
          color: AppColors.onBackground,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
