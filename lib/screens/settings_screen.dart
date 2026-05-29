import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../generated/app_localizations.dart';

import '../main.dart';
import '../services/audio_service.dart';
import '../services/settings_service.dart';

// TODO: Eigene GitHub Issues URL hier eintragen
const _bugReportUrl = 'https://github.com/Lassandriel/draconia_quiz/issues';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _musicVolume = SettingsService.instance.musicVolume;
  double _sfxVolume = SettingsService.instance.sfxVolume;
  String _version = '';

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((info) {
      setState(() => _version = info.version);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = SettingsService.instance.locale;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0A1A),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFCDA84D)),
          onPressed: () => context.go('/'),
        ),
        title: Text(
          l10n.settings,
          style: const TextStyle(
            fontFamily: 'Cinzel',
            color: Color(0xFFCDA84D),
            fontSize: 18,
          ),
        ),
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(color: Color(0xFF3A2D5A), height: 1),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: [
          // ── Audio ──────────────────────────────────
          _SectionHeader(l10n.audioSection),
          _SliderTile(
            icon: Icons.music_note,
            label: l10n.musicVolume,
            value: _musicVolume,
            onChanged: (v) {
              setState(() => _musicVolume = v);
              AudioService.instance.setMusicVolume(v);
            },
          ),
          _SliderTile(
            icon: Icons.auto_awesome,
            label: l10n.sfxVolume,
            value: _sfxVolume,
            onChanged: (v) {
              setState(() => _sfxVolume = v);
              AudioService.instance.setSfxVolume(v);
            },
          ),
          const _Divider(),

          // ── Sprache ────────────────────────────────
          _SectionHeader(l10n.languageSection),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              children: [
                _LangChip(
                  label: 'Deutsch',
                  selected: locale.languageCode == 'de',
                  onTap: () {
                    DraconiaApp.setLocale(context, const Locale('de'));
                    setState(() {});
                  },
                ),
                const SizedBox(width: 12),
                _LangChip(
                  label: 'English',
                  selected: locale.languageCode == 'en',
                  onTap: () {
                    DraconiaApp.setLocale(context, const Locale('en'));
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          const _Divider(),

          // ── Über die App ───────────────────────────
          _SectionHeader(l10n.aboutSection),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Color(0xFFCDA84D)),
            title: Text(l10n.version,
                style: const TextStyle(color: Color(0xFFE8DFC0))),
            trailing: Text(
              _version.isEmpty ? '—' : 'v$_version',
              style: const TextStyle(
                color: Color(0xFFCDA84D),
                fontFamily: 'Outfit',
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.bug_report_outlined,
                color: Color(0xFFCDA84D)),
            title: Text(l10n.reportBug,
                style: const TextStyle(color: Color(0xFFE8DFC0))),
            subtitle: Text(l10n.reportBugSubtitle,
                style: const TextStyle(
                    color: Color(0xFF9B8C6E), fontSize: 12)),
            trailing: const Icon(Icons.open_in_new,
                color: Color(0xFF9B8C6E), size: 16),
            onTap: () async {
              final uri = Uri.parse(_bugReportUrl);
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            },
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFFCDA84D),
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class _SliderTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const _SliderTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFCDA84D), size: 20),
          const SizedBox(width: 12),
          SizedBox(
            width: 72,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFFE8DFC0),
                fontFamily: 'Outfit',
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Slider(
              value: value,
              min: 0,
              max: 1,
              divisions: 20,
              onChanged: onChanged,
            ),
          ),
          SizedBox(
            width: 32,
            child: Text(
              '${(value * 100).round()}',
              style: const TextStyle(
                color: Color(0xFF9B8C6E),
                fontFamily: 'Outfit',
                fontSize: 12,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

class _LangChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _LangChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFCDA84D) : const Color(0xFF1A1530),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selected
                ? const Color(0xFFCDA84D)
                : const Color(0xFF3A2D5A),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'Outfit',
            color: selected
                ? const Color(0xFF0D0A1A)
                : const Color(0xFFE8DFC0),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFF3A2D5A),
      height: 24,
      indent: 20,
      endIndent: 20,
    );
  }
}
