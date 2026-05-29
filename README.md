# Draconia Quiz

Ein Persönlichkeitsquiz für iOS, Android und Web: *Welche Drachenart und welches Element bist du?*

---

## Status

### ✅ Fertig
- Flutter-Projekt (iOS + Android + Web aus einer Codebasis)
- Quiz-Logik: 12 Fragen, Punktesystem → 21 mögliche Ergebnisse
- Alle Ergebnistexte (Deutsch + Englisch)
- 3 Screens: Startseite, Quiz, Ergebnis
- Dunkles Fantasy-Theme (Gold auf Nachtblau)
- Sprachauswahl DE/EN
- Web-Build funktioniert

### 🖼️ Assets — Bilder
- [x] App-Icon, Splash, Quiz-Hintergrund
- [x] Großdrache (alle 6 Unterarten)
- [x] Lung-Drache (alle 3)
- [x] Wyvern (beide)
- [x] Lindwurm (beide)
- [x] Amphithere (beide)
- [x] Leviathan — `leviathan_gezeiten.png`, `leviathan_magma.png`
- [x] Seraph — `seraph_gewitter.png`, `seraph_aether.png`
- [x] Fae-Drache — `fae_stadt.png`, `fae_wald.png`
- [x] Element-Icons (alle 11) ✅ Alle Assets vollständig

→ Bilder einfach in die richtigen Unterordner legen, App nutzt sie automatisch.
→ Spezifikationen: siehe [assets/ASSETS_README.md](assets/ASSETS_README.md)

### 🔤 Assets — Fonts
- [x] Cinzel Decorative — App-Titel, Ergebnisnamen
- [x] Cinzel — Überschriften
- [x] Crimson Text — Beschreibungstexte
- [x] Outfit — UI-Elemente, Buttons, Labels

### 🎵 Assets — Audio
- [x] `assets/audio/music_home.mp3` — Startscreen, episch/mystisch *(Jakob Welik)*
- [x] `assets/audio/music_quiz.mp3` — Quiz, ruhig/spannungsaufbauend *(charlvera — Siege of the Ancients v3)*
- [x] `assets/audio/music_result.mp3` — Ergebnis, triumphierend *(playlistsons — Triumph of Dawn)*
- [x] `assets/audio/sfx_answer.mp3` — Antwort antippen *(freesound_community — rightanswer)*
- [x] `assets/audio/sfx_result.mp3` — Ergebnis erscheint *(freesound_community — success fanfare trumpets)*
- [x] `assets/audio/sfx_button.mp3` — Start/Nochmal-Buttons *(freesoundeffects — button click)*
- [x] `assets/audio/sfx_transition.mp3` — Zwischen Fragen *(Jofae — transition)*

→ Quellen: AG, freesound.org, pixabay.com/music, oder KI (Suno/Udio)
→ `audioplayers`-Package ist eingebaut — weitere Tracks einfach in `assets/audio/` legen

### 🚀 Noch offen (vor Release)
- [ ] App-Icon in Android/iOS einsetzen (aus `assets/images/app/app_icon.png`)
- [ ] Splash-Screen konfigurieren
- [x] Audio-Integration (`audioplayers` eingebaut, Mute-Button vorhanden)
- [x] Fonts aktivieren (Cinzel, Crimson Text, Outfit — alle aktiv)
- [ ] Testen auf echtem iOS- und Android-Gerät
- [ ] Google Play Developer Account ($25 einmalig)
- [ ] Apple Developer Account ($99/Jahr) + Mac für iOS-Build

---

## Projektstruktur

```
lib/
├── main.dart               # App-Einstieg, Theme, Router
├── screens/
│   ├── home_screen.dart    # Startseite
│   ├── quiz_screen.dart    # Quiz-Flow
│   └── result_screen.dart  # Ergebnis
├── models/
│   ├── dragon_type.dart    # Enums für Drachenarten + Bildpfade
│   └── quiz_question.dart  # Datenmodell für Fragen/Antworten
├── data/
│   ├── questions.dart      # Alle 12 Fragen mit Punkteverteilung
│   └── results.dart        # Alle 21 Ergebnistexte (DE + EN)
├── services/
│   └── audio_service.dart  # Musik & SFX-Verwaltung, Mute
├── l10n/                   # Übersetzungs-Quelldateien (.arb)
└── generated/              # Auto-generiert, nicht manuell bearbeiten

assets/
├── ASSETS_README.md        # Spezifikationen für Antigravity
├── images/
│   ├── app/                # Icon, Splash, Hintergrund
│   └── results/            # Ergebnis-Illustrationen je Drachenart
├── icons/elements/         # Element-Icons
├── fonts/                  # Cinzel, Crimson Text, Outfit
└── audio/                  # music_home.mp3 + Platz für weitere Tracks
```

---

## Lizenzen

### Fonts
Alle Schriften stehen unter der **SIL Open Font License 1.1 (OFL)** — kostenlos, auch für kommerzielle Apps erlaubt.

| Font | Lizenz | Quelle |
|---|---|---|
| Cinzel | OFL 1.1 | fonts.google.com/specimen/Cinzel |
| Cinzel Decorative | OFL 1.1 | fonts.google.com/specimen/Cinzel+Decorative |
| Crimson Text | OFL 1.1 | fonts.google.com/specimen/Crimson+Text |
| Outfit | OFL 1.1 | fonts.google.com/specimen/Outfit |

Die OFL erlaubt: freie Nutzung, kommerzielle Nutzung, Bündeln in Apps.
Die OFL verbietet: den Font selbst verkaufen.

### Bilder
Erstellt von Antigravity — alle Rechte beim Projekteigentümer.

### Audio

| Datei | Titel | Künstler | Lizenz | Quelle |
|---|---|---|---|---|
| `music_home.mp3` | Epic Collection Vol. 1 — Track 14 | Jakob Welik | Pixabay Content License | https://pixabay.com/de/music/%C3%BCberschrift-epic-collection-vol-1-mastered-edition-14-429662/ |
| `music_quiz.mp3` | Siege of the Ancients v3 | charlvera | Pixabay Content License | https://pixabay.com/de/music/%C3%BCberschrift-siege-of-the-ancients-v3-instrumental-background-music-for-video-332947/ |
| `music_result.mp3` | Triumph of Dawn | playlistsons | Pixabay Content License | https://pixabay.com/de/music/%C3%BCberschrift-triumph-of-dawn-304861/ |
| `sfx_answer.mp3` | rightanswer | freesound_community | Pixabay Content License | https://pixabay.com/de/sound-effects/film-spezialeffekte-rightanswer-95219/ |
| `sfx_result.mp3` | success fanfare trumpets | freesound_community | Pixabay Content License | https://pixabay.com/de/sound-effects/film-spezialeffekte-success-fanfare-trumpets-6185/ |
| `sfx_button.mp3` | button click | freesoundeffects | Pixabay Content License | https://pixabay.com/de/sound-effects/film-spezialeffekte-button-click-289742/ |
| `sfx_transition.mp3` | transition | Jofae | CC0 — Public Domain | https://freesound.org/people/Jofae/sounds/366085/ |

---

## Ergebnisse (21 total)

| Drachenart | Unterarten |
|---|---|
| Großdrache | Sonne, Erde, Gezeiten & Traum, Wind, Kristall, Feuer |
| Lung-Drache | Feuer, Licht, Feuer & Licht |
| Wyvern | Sturm, Frost |
| Lindwurm | Magma, Sumpf |
| Amphithere | Traum, Sonne |
| Leviathan | Gezeiten, Magma |
| Seraph | Gewitter, Äther |
| Fae-Drache | Stadt, Wald |
