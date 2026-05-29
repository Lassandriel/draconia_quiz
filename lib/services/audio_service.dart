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
    await _musicPlayer.stop();
    if (muted) return;
    await _musicPlayer.setReleaseMode(ReleaseMode.loop);
    await _musicPlayer.setVolume(SettingsService.instance.musicVolume);
    await _musicPlayer.play(AssetSource(assetPath));
  }

  Future<void> stopMusic() async {
    _currentTrack = null;
    await _musicPlayer.stop();
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
    if (newMuted) {
      await _musicPlayer.setVolume(0);
    } else {
      await _musicPlayer.setVolume(SettingsService.instance.musicVolume);
      if (_currentTrack != null) {
        await _musicPlayer.play(AssetSource(_currentTrack!));
      }
    }
  }

  Future<void> playSfx(String assetPath, {double? volume}) async {
    if (muted) return;
    final sfx = AudioPlayer();
    await sfx.setVolume(volume ?? SettingsService.instance.sfxVolume);
    await sfx.play(AssetSource(assetPath));
    sfx.onPlayerComplete.listen((_) => sfx.dispose());
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
