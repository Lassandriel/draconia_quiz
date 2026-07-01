#!/usr/bin/env python3
"""Schneidet die nicht-lateinischen Fonts auf die tatsächlich in der App
vorkommenden Zeichen zu (Subsetting).

Warum: Die vollen CJK-Fonts (Noto Serif JP/SC) sind je ~13–25 MB. Da der
gesamte anzeigbare Text feststeht (Nutzer geben nie eigenen Text ein), reichen
die paar hundert wirklich verwendeten Zeichen — das schrumpft die Fonts auf
wenige hundert KB.

Wiederholbar: Kommt Text dazu (neue Sprache, neue Frage …), einfach erneut
ausführen. Die Quell-Fonts liegen dauerhaft in fonts_src/ — kein erneuter
Download nötig.

    python tools/subset_fonts.py

Voraussetzung: pip install fonttools brotli
"""

import glob
import os
import sys

from fontTools import subset

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "fonts_src")
OUT = os.path.join(ROOT, "assets", "fonts")

# Quell-Font  ->  Ausgabedatei (die gebündelte, zugeschnittene Version).
FONTS = [
    ("PlayfairDisplay-VariableFont_wght.ttf", "PlayfairDisplay-subset.ttf"),
    ("Amiri-Regular.ttf", "Amiri-Regular-subset.ttf"),
    ("Amiri-Bold.ttf", "Amiri-Bold-subset.ttf"),
    ("NotoSerifJP-VariableFont_wght.ttf", "NotoSerifJP-subset.ttf"),
    ("NotoSerifSC-VariableFont_wght.ttf", "NotoSerifSC-subset.ttf"),
]

# Alle Dateien, die anzeigbaren Text enthalten.
TEXT_SOURCES = glob.glob(os.path.join(ROOT, "lib", "l10n", "*.arb")) + [
    os.path.join(ROOT, "lib", "data", "questions.dart"),
    os.path.join(ROOT, "lib", "data", "results.dart"),
]


def collect_chars() -> str:
    chars = set()
    for path in TEXT_SOURCES:
        with open(path, encoding="utf-8") as f:
            chars |= set(f.read())
    # Basis-ASCII (Ziffern, Satzzeichen, Leerzeichen) immer mitnehmen.
    chars |= set(chr(c) for c in range(0x20, 0x7F))
    chars.discard("\n")
    chars.discard("\t")
    return "".join(sorted(chars))


def main() -> int:
    if not os.path.isdir(SRC):
        print(f"FEHLER: {SRC} fehlt – Quell-Fonts nicht vorhanden.", file=sys.stderr)
        return 1

    text = collect_chars()
    charfile = os.path.join(SRC, "_used_chars.txt")
    with open(charfile, "w", encoding="utf-8") as f:
        f.write(text)
    print(f"{len(text)} eindeutige Zeichen gesammelt.")

    for src_name, out_name in FONTS:
        src = os.path.join(SRC, src_name)
        out = os.path.join(OUT, out_name)
        if not os.path.isfile(src):
            print(f"!! Quelle fehlt, übersprungen: {src_name}", file=sys.stderr)
            continue
        subset.main([
            src,
            f"--text-file={charfile}",
            f"--output-file={out}",
            # Alle OpenType-Features behalten – zwingend für die arabische
            # Verbindungsschrift (init/medi/fina/isol, Ligaturen, Marks).
            "--layout-features=*",
            "--no-hinting",  # spart bei CJK viel Platz, kein sichtbarer Verlust
            "--drop-tables+=DSIG",
        ])
        kb = os.path.getsize(out) // 1024
        print(f"  {out_name:<28} {kb:>6} KB")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
