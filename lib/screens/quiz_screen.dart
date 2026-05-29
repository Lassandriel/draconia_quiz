import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../generated/app_localizations.dart';

import '../data/questions.dart' show quizQuestions;
import '../models/dragon_type.dart';
import '../models/quiz_question.dart';
import '../services/audio_service.dart';
import '../services/settings_service.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final Map<DragonSubtype, int> _scores = {};
  late final List<QuizQuestion> _shuffledQuestions;

  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    AudioService.instance.playMusic(AudioAssets.musicQuiz);
    _shuffledQuestions = List.of(quizQuestions)..shuffle();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.08, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onAnswer(QuizAnswer answer) {
    AudioService.instance.playSfx(
      AudioAssets.sfxAnswer,
      volume: SettingsService.instance.sfxVolume * 0.45,
    );
    answer.scores.forEach((subtype, points) {
      _scores[subtype] = (_scores[subtype] ?? 0) + points;
    });

    // Ab Frage 12 den aktuellen Spitzenreiter vorladen
    final total = _shuffledQuestions.length;
    if (_currentIndex >= total - 6 && _scores.isNotEmpty) {
      final leader = _scores.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
      precacheImage(AssetImage(leader.imagePath), context);
    }

    if (_currentIndex < total - 1) {
      AudioService.instance.playSfx(AudioAssets.sfxTransition);
      _controller.reset();
      setState(() => _currentIndex++);
      _controller.forward();
    } else {
      _finish();
    }
  }

  void _finish() {
    if (_scores.isEmpty) return;
    final maxScore = _scores.values.reduce((a, b) => a > b ? a : b);
    final top = _scores.entries.where((e) => e.value == maxScore).toList()
      ..shuffle();
    SettingsService.instance.saveLastResult(top.first.key.name);
    context.go('/result/${top.first.key.name}');
  }

  Future<bool> _confirmAbort(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    return await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            backgroundColor: const Color(0xFF1A1530),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xFF3A2D5A)),
            ),
            title: Text(
              l10n.quitTitle,
              style: const TextStyle(
                  fontFamily: 'Cinzel', color: Color(0xFFE8DFC0)),
            ),
            content: Text(
              l10n.quitMessage,
              style: const TextStyle(
                  fontFamily: 'CrimsonText',
                  color: Color(0xFF9B8C6E),
                  fontSize: 16),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(
                  l10n.quitCancel,
                  style: const TextStyle(color: Color(0xFFCDA84D)),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(
                  l10n.quitConfirm,
                  style: const TextStyle(color: Color(0xFF9B8C6E)),
                ),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final question = _shuffledQuestions[_currentIndex];
    final isDE = Localizations.localeOf(context).languageCode == 'de';
    final total = _shuffledQuestions.length;
    final progress = (_currentIndex + 1) / total;
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    Widget questionArea = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            isDE ? question.textDe : question.textEn,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: question.answers.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (_, i) {
              final answer = question.answers[i];
              return _AnswerCard(
                text: isDE ? answer.textDe : answer.textEn,
                onTap: () => _onAnswer(answer),
              );
            },
          ),
        ),
      ],
    );

    // Animationen nur wenn vom System nicht deaktiviert
    if (!reduceMotion) {
      questionArea = FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: questionArea,
        ),
      );
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;
        final abort = await _confirmAbort(context);
        if (abort && context.mounted) context.go('/');
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Semantics(
                label: 'Quiz background',
                excludeSemantics: true,
                child: Image.asset(
                  'assets/images/app/quiz_background.webp',
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) =>
                      Container(color: const Color(0xFF0D0A1A)),
                ),
              ),
            ),
            Positioned.fill(
              child:
                  Container(color: Colors.black.withValues(alpha: 0.65)),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Row(
                      children: [
                        // 48px Mindest-Touch-Target
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Color(0xFFCDA84D)),
                            tooltip: isDE ? 'Zurück' : 'Back',
                            onPressed: () async {
                              final abort = await _confirmAbort(context);
                              if (abort && context.mounted) context.go('/');
                            },
                          ),
                        ),
                        Expanded(
                          child: Semantics(
                            label: isDE
                                ? 'Frage ${_currentIndex + 1} von $total'
                                : 'Question ${_currentIndex + 1} of $total',
                            excludeSemantics: true,
                            child: Text(
                              l10n.questionOf(_currentIndex + 1, total),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: const Color(0xFFCDA84D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: IconButton(
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
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Fortschrittsbalken
                  Semantics(
                    label: isDE
                        ? 'Fortschritt: ${_currentIndex + 1} von $total'
                        : 'Progress: ${_currentIndex + 1} of $total',
                    excludeSemantics: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: reduceMotion
                            ? LinearProgressIndicator(
                                value: progress,
                                backgroundColor: const Color(0xFF1A1530),
                                valueColor: const AlwaysStoppedAnimation(
                                    Color(0xFFCDA84D)),
                                minHeight: 6,
                              )
                            : TweenAnimationBuilder<double>(
                                tween: Tween(begin: 0, end: progress),
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeOut,
                                builder: (_, value, _) =>
                                    LinearProgressIndicator(
                                  value: value,
                                  backgroundColor: const Color(0xFF1A1530),
                                  valueColor: const AlwaysStoppedAnimation(
                                      Color(0xFFCDA84D)),
                                  minHeight: 6,
                                ),
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(child: questionArea),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AnswerCard extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const _AnswerCard({required this.text, required this.onTap});

  @override
  State<_AnswerCard> createState() => _AnswerCardState();
}

class _AnswerCardState extends State<_AnswerCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: widget.text,
      child: GestureDetector(
        onTapDown: (_) => setState(() => _pressed = true),
        onTapUp: (_) {
          setState(() => _pressed = false);
          widget.onTap();
        },
        onTapCancel: () => setState(() => _pressed = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color:
                _pressed ? const Color(0xFF2A2040) : const Color(0xFF1A1530),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _pressed
                  ? const Color(0xFFCDA84D)
                  : const Color(0xFF3A2D5A),
              width: _pressed ? 1.5 : 1,
            ),
          ),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
