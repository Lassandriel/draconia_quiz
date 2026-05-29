import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'generated/app_localizations.dart';

import 'screens/home_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/result_screen.dart';
import 'screens/settings_screen.dart';
import 'models/dragon_type.dart';
import 'services/audio_service.dart';
import 'services/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SettingsService.instance.init();
  runApp(const DraconiaApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (_, _) => const HomeScreen()),
    GoRoute(path: '/quiz', builder: (_, _) => const QuizScreen()),
    GoRoute(path: '/settings', builder: (_, _) => const SettingsScreen()),
    GoRoute(
      path: '/result/:subtype',
      builder: (_, state) {
        final subtypeName = state.pathParameters['subtype']!;
        final subtype = DragonSubtype.values.firstWhere(
          (e) => e.name == subtypeName,
        );
        return ResultScreen(subtype: subtype);
      },
    ),
  ],
);

class DraconiaApp extends StatefulWidget {
  const DraconiaApp({super.key});

  static void setLocale(BuildContext context, Locale locale) {
    _DraconiaAppState? state =
        context.findAncestorStateOfType<_DraconiaAppState>();
    state?.setLocale(locale);
  }

  @override
  State<DraconiaApp> createState() => _DraconiaAppState();
}

class _DraconiaAppState extends State<DraconiaApp>
    with WidgetsBindingObserver {
  Locale _locale = SettingsService.instance.locale;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
        AudioService.instance.pauseMusic();
      case AppLifecycleState.resumed:
        AudioService.instance.resumeMusic();
      default:
        break;
    }
  }

  void setLocale(Locale locale) {
    SettingsService.instance.setLocale(locale);
    setState(() => _locale = locale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Draconia Quiz',
      locale: _locale,
      supportedLocales: const [Locale('de'), Locale('en')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: _draconiaTheme(),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

ThemeData _draconiaTheme() {
  const background = Color(0xFF0D0A1A);
  const surface = Color(0xFF1A1530);
  const primary = Color(0xFFCDA84D);
  const onPrimary = Color(0xFF0D0A1A);
  const onBackground = Color(0xFFE8DFC0);

  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.dark(
      primary: primary,
      onPrimary: onPrimary,
      surface: surface,
      onSurface: onBackground,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'CinzelDecorative',
        color: primary,
        fontSize: 34,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Cinzel',
        color: onBackground,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'CrimsonText',
        color: onBackground,
        fontSize: 18,
        height: 1.7,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Outfit',
        color: onBackground,
        fontSize: 14,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Outfit',
        color: onPrimary,
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.8,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    cardTheme: CardThemeData(
      color: surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFF3A2D5A), width: 1),
      ),
      elevation: 4,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: primary,
      thumbColor: primary,
      inactiveTrackColor: surface,
      overlayColor: Color(0x33CDA84D),
    ),
  );
}
