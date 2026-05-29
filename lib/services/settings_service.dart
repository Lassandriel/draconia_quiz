import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  SettingsService._();
  static final SettingsService instance = SettingsService._();

  late SharedPreferences _prefs;

  Locale _locale = const Locale('en');
  double _musicVolume = 0.5;
  double _sfxVolume = 0.8;
  bool _muted = false;

  String? _lastResult;

  Locale get locale => _locale;
  double get musicVolume => _musicVolume;
  double get sfxVolume => _sfxVolume;
  bool get muted => _muted;
  String? get lastResult => _lastResult;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();

    _musicVolume = _prefs.getDouble('music_volume') ?? 0.5;
    _sfxVolume = _prefs.getDouble('sfx_volume') ?? 0.8;
    _muted = _prefs.getBool('muted') ?? false;
    _lastResult = _prefs.getString('last_result');

    final saved = _prefs.getString('language');
    if (saved != null) {
      _locale = Locale(saved);
    } else {
      final systemLang =
          WidgetsBinding.instance.platformDispatcher.locale.languageCode;
      _locale = systemLang == 'de' ? const Locale('de') : const Locale('en');
      await _prefs.setString('language', _locale.languageCode);
    }
  }

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    await _prefs.setString('language', locale.languageCode);
  }

  Future<void> setMusicVolume(double volume) async {
    _musicVolume = volume;
    await _prefs.setDouble('music_volume', volume);
  }

  Future<void> setSfxVolume(double volume) async {
    _sfxVolume = volume;
    await _prefs.setDouble('sfx_volume', volume);
  }

  Future<void> setMuted(bool muted) async {
    _muted = muted;
    await _prefs.setBool('muted', muted);
  }

  Future<void> saveLastResult(String subtypeName) async {
    _lastResult = subtypeName;
    await _prefs.setString('last_result', subtypeName);
  }
}
