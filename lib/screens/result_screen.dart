import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import '../generated/app_localizations.dart';

import '../models/dragon_type.dart';
import '../data/results.dart';
import '../services/audio_service.dart';

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

  void _share(String name, String element, String description) {
    final isDE = Localizations.localeOf(context).languageCode == 'de';
    final text = isDE
        ? '🐉 Ich bin ein $name!\nElement: $element\n\n$description\n\n#DraconiaQuiz'
        : '🐉 I am a $name!\nElement: $element\n\n$description\n\n#DraconiaQuiz';
    Share.share(text);
  }

  @override
  Widget build(BuildContext context) {
    final subtype = widget.subtype;
    final l10n = AppLocalizations.of(context)!;
    final isDE = Localizations.localeOf(context).languageCode == 'de';
    final result = dragonResults[subtype]!;
    final theme = Theme.of(context);
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    final species = isDE ? result.speciesDe : result.speciesEn;
    final name = isDE ? result.nameDe : result.nameEn;
    final element = isDE ? result.elementDe : result.elementEn;
    final description = isDE ? result.descriptionDe : result.descriptionEn;
    final rarity = isDE ? result.rarityDe : result.rarityEn;

    final scrollView = CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 520,
          pinned: true,
          backgroundColor: const Color(0xFF0D0A1A),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFFCDA84D)),
            tooltip: isDE ? 'Zurück' : 'Back',
            onPressed: () => context.go('/'),
          ),
          actions: [
            StatefulBuilder(
              builder: (_, setIconState) => IconButton(
                icon: Icon(
                  AudioService.instance.muted
                      ? Icons.volume_off
                      : Icons.volume_up,
                  color: const Color(0xFFCDA84D),
                ),
                tooltip: AudioService.instance.muted
                    ? (isDE ? 'Ton einschalten' : 'Unmute')
                    : (isDE ? 'Ton ausschalten' : 'Mute'),
                onPressed: () async {
                  await AudioService.instance.toggleMute();
                  setIconState(() {});
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.share, color: Color(0xFFCDA84D)),
              tooltip: isDE ? 'Ergebnis teilen' : 'Share result',
              onPressed: () => _share(name, element, description),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Semantics(
                  label: isDE
                      ? '$name – Drachenbild'
                      : '$name – dragon image',
                  excludeSemantics: true,
                  child: Image.asset(
                    result.subtype.imagePath,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    errorBuilder: (_, _, _) => Container(
                      color: const Color(0xFF1A1530),
                      child: const Icon(
                        Icons.image_not_supported,
                        color: Color(0xFF3A2D5A),
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
                      colors: [Colors.transparent, Color(0xFF0D0A1A)],
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
            label: isDE
                ? '$name. Spezies: $species. Element: $element. Seltenheit: $rarity. $description'
                : '$name. Species: $species. Element: $element. Rarity: $rarity. $description',
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.yourResult,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFFCDA84D),
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(name, style: theme.textTheme.displayLarge),
                  const SizedBox(height: 20),
                  _InfoChip(label: l10n.species, value: species),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _InfoChip(label: l10n.element, value: element),
                      const SizedBox(width: 12),
                      _InfoChip(label: l10n.rarity, value: rarity),
                    ],
                  ),
                  const SizedBox(height: 28),
                  _ElementIconRow(
                    subtype: subtype,
                    elementName: element,
                  ),
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
                        style: const TextStyle(color: Color(0xFFCDA84D)),
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
        color: const Color(0xFF1A1530),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF3A2D5A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFCDA84D),
              fontSize: 11,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFFE8DFC0),
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
                color: Color(0xFFCDA84D),
                size: 36,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        ExcludeSemantics(
          child: Text(
            elementName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}
