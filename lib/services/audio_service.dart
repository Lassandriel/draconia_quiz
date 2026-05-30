import 'package:audioplayers/audioplayers.dart';
import 'settings_service.dart';

class AudioService {
  AudioService._();
  static final AudioService instance = AudioService._();

  final AudioPlayer _musicPlayer = AudioPlayer();
  String? _currentTrack;

  bool get muted => SettingsService.instance.muted;

  Future<void> playMusic(String assetPath) async {
    if (_currentTrack == assetPath) return;
    _currentTrack = assetPath;
    try {
      await _musicPlayer.stop();
      if (muted) return;
      await _musicPlayer.setReleaseMode(ReleaseMode.loop);
      await _musicPlayer.setVolume(SettingsService.instance.musicVolume);
      await _musicPlayer.play(AssetSource(assetPath));
    } catch (_) {
      // Audio kann fehlschlagen (fehlendes Asset, Web-Autoplay-Sperre,
      // kein Audio-Output). Stumm ignorieren statt App crashen.
    }
  }

  Future<void> stopMusic() async {
    _currentTrack = null;
    await _musicPlayer.stop();
  }

  Future<void> pauseMusic() async {
    await _musicPlayer.pause();
  }

  Future<void> resumeMusic() async {
    if (!muted && _currentTrack != null) {
      try {
        await _musicPlayer.resume();
      } catch (_) {
        // Resume kann fehlschlagen (z.B. Web-Autoplay-Sperre).
      }
    }
  }

  Future<void> setMusicVolume(double volume) async {
    await SettingsService.instance.setMusicVolume(volume);
    if (!muted) await _musicPlayer.setVolume(volume);
  }

  Future<void> setSfxVolume(double volume) async {
    await SettingsService.instance.setSfxVolume(volume);
  }

  Future<void> toggleMute() async {
    final newMuted = !muted;
    await SettingsService.instance.setMuted(newMuted);
    try {
      if (newMuted) {
        await _musicPlayer.setVolume(0);
      } else {
        final track = _currentTrack;
        await _musicPlayer.stop();
        await _musicPlayer.setReleaseMode(ReleaseMode.loop);
        await _musicPlayer.setVolume(SettingsService.instance.musicVolume);
        if (track != null && track == _currentTrack) {
          await _musicPlayer.play(AssetSource(track));
        }
      }
    } catch (_) {
      // Audio-Fehler nicht in die UI durchschlagen lassen.
    }
  }

  Future<void> playSfx(String assetPath, {double? volume}) async {
    if (muted) return;
    final sfx = AudioPlayer();
    try {
      await sfx.setVolume(volume ?? SettingsService.instance.sfxVolume);
      await sfx.play(AssetSource(assetPath));
      sfx.onPlayerComplete.listen((_) => sfx.dispose());
    } catch (_) {
      // Bei Fehler Player sofort freigeben, damit er nicht leakt.
      await sfx.dispose();
    }
  }

  void dispose() {
    _musicPlayer.dispose();
  }
}

class AudioAssets {
  static const musicHome = 'audio/music_home.mp3';
  static const musicQuiz = 'audio/music_quiz.mp3';
  static const musicResult = 'audio/music_result.mp3';

  static const sfxAnswer = 'audio/sfx_answer.mp3';
  static const sfxResult = 'audio/sfx_result.mp3';
  static const sfxButton = 'audio/sfx_button.mp3';
  static const sfxTransition = 'audio/sfx_transition.mp3';
}
