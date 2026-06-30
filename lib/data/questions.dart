import '../models/dragon_type.dart';
import '../models/quiz_question.dart';

const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    text: {
      'de': 'Wo fühlst du dich am lebendigsten?',
      'en': 'Where do you feel most alive?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Hoch über den Wolken, im Licht der Sonne',
          'en': 'High above the clouds, in the light of the sun',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 3,
          DragonSubtype.amphithereSonne: 2,
          DragonSubtype.lungFeuerLicht: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Tief im Wald, zwischen Moos und alten Bäumen',
          'en': 'Deep in the forest, among moss and ancient trees',
        },
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.faeStadt: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'An einem Vulkan, umgeben von Feuer und Lava',
          'en': 'At a volcano, surrounded by fire and lava',
        },
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.lungFeuerLicht: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'In den Tiefen des Ozeans',
          'en': 'In the depths of the ocean',
        },
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'In Höhlen tief im Stein',
          'en': 'In caves deep within the stone',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.lindwurmMagma: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'In eisiger Kälte, im ewigen Eis',
          'en': 'In icy cold, amid eternal ice',
        },
        scores: {DragonSubtype.wyvernFrost: 3},
      ),
      QuizAnswer(
        text: {
          'de': 'An steilen Klippen und in weiter Steppe',
          'en': 'On steep cliffs and across open steppe',
        },
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Wie gehst du mit Konflikten um?',
      'en': 'How do you handle conflict?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich handle direkt und mit Stärke',
          'en': 'I act directly and with strength',
        },
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.seraphGewitter: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich beobachte zuerst und plane taktisch',
          'en': 'I observe first and plan tactically',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.wyvernFrost: 2,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich versuche Verständnis und Diplomatie',
          'en': 'I seek understanding and diplomacy',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 3,
          DragonSubtype.amphithereSonne: 2,
          DragonSubtype.grossdracheKristall: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich weiche aus und löse es auf meine eigene Art',
          'en': 'I evade and solve it in my own way',
        },
        scores: {
          DragonSubtype.faeStadt: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Was treibt dich am stärksten an?',
      'en': 'What motivates you the most?',
    },
    answers: [
      QuizAnswer(
        text: {'de': 'Freiheit und Abenteuer', 'en': 'Freedom and adventure'},
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Wissen und Geheimnisse lüften',
          'en': 'Knowledge and uncovering secrets',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.amphithereTraum: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Meine Familie und Gemeinschaft schützen',
          'en': 'Protecting my family and community',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.lungLicht: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Erschaffen, handwerken, bauen',
          'en': 'Creating, crafting, building',
        },
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.lindwurmMagma: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Welches Wetter passt am besten zu dir?',
      'en': 'Which weather suits you best?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Gewitter — elektrisch und wild',
          'en': 'Thunderstorm — electric and wild',
        },
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheFeuer: 1,
        },
      ),
      QuizAnswer(
        text: {'de': 'Strahlender Sonnenschein', 'en': 'Bright sunshine'},
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.amphithereSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.lungFeuerLicht: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Tiefer Nebel und Mondschein',
          'en': 'Deep fog and moonlight',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.faeWald: 1,
        },
      ),
      QuizAnswer(
        text: {'de': 'Eisige Kälte und Stille', 'en': 'Icy cold and silence'},
        scores: {
          DragonSubtype.wyvernFrost: 3,
          DragonSubtype.seraphAether: 2,
          DragonSubtype.leviathanGezeiten: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Wie bewegst du dich am liebsten fort?',
      'en': 'How do you prefer to move?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Rasend schnell — nichts kann mich aufhalten',
          'en': 'Blazing fast — nothing can stop me',
        },
        scores: {
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.lungFeuerLicht: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Schwebend und anmutig, fast lautlos',
          'en': 'Floating gracefully, almost silent',
        },
        scores: {
          DragonSubtype.lungLicht: 3,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Durch das Wasser oder unterirdisch',
          'en': 'Through water or underground',
        },
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.lindwurmSumpf: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Mit mächtigen Flügelschlägen, imposant',
          'en': 'With powerful wingbeats, imposing',
        },
        scores: {
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.grossdracheKristall: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Was ist deine größte Stärke?',
      'en': 'What is your greatest strength?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Physische Kraft und Unverwundbarkeit',
          'en': 'Physical power and invulnerability',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.wyvernFrost: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Intuition und emotionale Tiefe',
          'en': 'Intuition and emotional depth',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Anpassungsfähigkeit und Cleverness',
          'en': 'Adaptability and cleverness',
        },
        scores: {
          DragonSubtype.faeStadt: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.amphithereSonne: 1,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Strahlendes Charisma und Führungsstärke',
          'en': 'Radiant charisma and leadership',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungFeuerLicht: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Was wäre dein Zuhause?',
      'en': 'What would your home be like?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Eine Festung aus Stein, tief in der Erde',
          'en': 'A fortress of stone, deep in the earth',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.lindwurmMagma: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ein Nest ganz oben, wo kein anderer hinkommt',
          'en': 'A nest at the very top, where no one else can reach',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ein prächtiger Palast, elegant und leuchtend',
          'en': 'A magnificent palace, elegant and radiant',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.amphithereSonne: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Kein festes Zuhause — ich bin ständig unterwegs',
          'en': 'No fixed home — I\'m always on the move',
        },
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.wyvernSturm: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Welche Farbe zieht dich am meisten an?',
      'en': 'Which color draws you in the most?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Gold und Weiß — leuchtend und warm',
          'en': 'Gold and white — radiant and warm',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Dunkelblau und Lila — geheimnisvoll und tief',
          'en': 'Dark blue and purple — mysterious and deep',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Schwarz und Orange — kraftvoll und gefährlich',
          'en': 'Black and orange — powerful and dangerous',
        },
        scores: {
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lungFeuer: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Grün und Braun — verwurzelt und lebendig',
          'en': 'Green and brown — rooted and alive',
        },
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.lindwurmSumpf: 3,
          DragonSubtype.faeStadt: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'In einer Gruppe übernimmst du die Rolle...',
      'en': 'In a group, you tend to be the one who...',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': '...die Richtung vorgibt und anführt',
          'en': '...sets the direction and leads',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.seraphGewitter: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': '...alle zusammenhält und für Harmonie sorgt',
          'en': '...holds everyone together and ensures harmony',
        },
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': '...alleine im Hintergrund die wichtige Arbeit macht',
          'en': '...works alone in the background doing the important work',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.faeWald: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.wyvernFrost: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': '...mit einem Streich die Stimmung auflockert',
          'en': '...lightens the mood with a clever trick',
        },
        scores: {
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.lungFeuer: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Was trifft am ehesten auf dich zu?',
      'en': 'Which of these fits you best?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich bin mächtig, aber sehne mich nach Ruhe',
          'en': 'I am powerful, but long for peace',
        },
        scores: {
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lungFeuer: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.lindwurmMagma: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich bin frei, aber fühle mich manchmal einsam',
          'en': 'I am free, but sometimes feel lonely',
        },
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.seraphAether: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich gehöre zur Welt, aber fühle mich fremd darin',
          'en': 'I belong to the world, but feel like a stranger in it',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.seraphAether: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernFrost: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich passe mich an, aber weiß nie ganz, wer ich bin',
          'en': 'I adapt, but never quite know who I am',
        },
        scores: {
          DragonSubtype.faeStadt: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.grossdracheKristall: 1,
          DragonSubtype.leviathanGezeiten: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Welche Fähigkeit wünschst du dir am meisten?',
      'en': 'Which ability do you wish for the most?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Dinge aus dem Nichts erschaffen',
          'en': 'Create things from nothing',
        },
        scores: {
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Illusionen weben und Träume beeinflussen',
          'en': 'Weave illusions and influence dreams',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Blitze und Stürme kontrollieren',
          'en': 'Control lightning and storms',
        },
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Reines Licht ausstrahlen, das Dunkelheit vertreibt',
          'en': 'Radiate pure light that drives away darkness',
        },
        scores: {
          DragonSubtype.lungLicht: 3,
          DragonSubtype.lungFeuerLicht: 3,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Wie triffst du wichtige Entscheidungen?',
      'en': 'How do you make important decisions?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Aus dem Bauch heraus — sofort',
          'en': 'From my gut — immediately',
        },
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.seraphGewitter: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Nach langer Beobachtung und Analyse',
          'en': 'After long observation and analysis',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.leviathanMagma: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich höre auf mein Herz und meine Gefühle',
          'en': 'I listen to my heart and feelings',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich schaue, was am besten für alle ist',
          'en': 'I look at what\'s best for everyone',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.amphithereSonne: 1,
        },
      ),
    ],
  ),

  // ── Lore-basierte Fragen ──────────────────────────────
  QuizQuestion(
    text: {
      'de': 'Wo würdest du am liebsten leben?',
      'en': 'Where would you most like to live?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'In einer prächtigen Hauptstadt voller Macht und Glanz',
          'en': 'In a grand capital full of power and splendor',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.grossdracheKristall: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'In einer Stadt voller Forschung und Wissen',
          'en': 'In a city full of research and knowledge',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Nirgends fest — immer unterwegs zu neuen Orten',
          'en': 'Nowhere fixed — always travelling to new places',
        },
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.amphithereTraum: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'In den wildesten Regionen: Vulkane, Stürme, Tiefsee',
          'en': 'In the wildest regions: volcanoes, storms, deep sea',
        },
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.faeWald: 2,
          DragonSubtype.wyvernFrost: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Welche Aufgabe würde dich erfüllen?',
      'en': 'What kind of work would fulfil you?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Sturmreiter — mitten im wildesten Geschehen',
          'en': 'Storm Rider — right in the thick of the action',
        },
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Baumeister — ich plane und forme die Welt',
          'en': 'Builder — I plan and shape the world',
        },
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
          DragonSubtype.grossdracheErde: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Meisterschmied — ich erschaffe Dinge, die ewig halten',
          'en': 'Master Smith — I forge things that last forever',
        },
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.grossdracheKristall: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Heiler — ich helfe still im Hintergrund',
          'en': 'Healer — I help quietly in the background',
        },
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.grossdracheSonne: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Du hast ein geheimes Hobby — welches?',
      'en': 'You have a secret hobby — which one?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich schreibe Geschichten über ein ganz normales Leben',
          'en': 'I write stories about a totally normal life',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.faeWald: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich baue winzige Miniaturwelten von Hand',
          'en': 'I build tiny miniature worlds by hand',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.lindwurmSumpf: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich päppele heimlich Pflanzen auf',
          'en': 'I secretly tend to my plants',
        },
        scores: {
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.faeWald: 3,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.wyvernSturm: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich verschlinge heimlich kitschige Liebesromane',
          'en': 'I secretly devour cheesy romance novels',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de':
          'Eine dunkle Macht bedroht die Existenz aller Drachen. Was tust du?',
      'en':
          'A dark power threatens the existence of all dragonkind. What do you do?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de':
              'Ich stelle mich allein dazwischen — und gebe notfalls mein Leben',
          'en': 'I stand in its path alone — and give my life if I must',
        },
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich eine alle Drachen unter mir und führe sie in den Kampf',
          'en': 'I unite all dragons under me and lead them into battle',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungFeuerLicht: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.amphithereSonne: 2,
          DragonSubtype.seraphGewitter: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich rette Wissen und Brut — und baue notfalls neu auf',
          'en': 'I save our knowledge and our young — and rebuild if I must',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.grossdracheGezeitenTraum: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich treffe die kalte Wahl: wenige opfern, um viele zu retten',
          'en': 'I make the cold choice: sacrifice the few to save the many',
        },
        scores: {
          DragonSubtype.wyvernFrost: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.grossdracheErde: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich greife zu Mitteln, die kein anderer wagt — um jeden Preis',
          'en': 'I turn to means no other dares — whatever the cost',
        },
        scores: {
          DragonSubtype.lindwurmSumpf: 3,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Welches Fest würde dich am meisten begeistern?',
      'en': 'Which kind of festival would excite you the most?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ein Gemeinschaftsfest, bei dem alle zusammenkommen',
          'en': 'A community festival where everyone comes together',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ein Handelsfest, wo fremde Kulturen aufeinandertreffen',
          'en': 'A trade festival where foreign cultures meet',
        },
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.faeStadt: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ein Kräftemessen voller Wettkämpfe und Spektakel',
          'en': 'A tournament full of contests and spectacle',
        },
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.lindwurmMagma: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Eine feierliche Zeremonie voller uralter Magie',
          'en': 'A solemn ceremony full of ancient magic',
        },
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.lungFeuerLicht: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    text: {
      'de': 'Wie stehst du zu Regeln und Gemeinschaft?',
      'en': 'How do you feel about rules and community?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Regeln bremsen mich — ich folge meiner Natur',
          'en': 'Rules hold me back — I follow my own nature',
        },
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.wyvernSturm: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich lebe gern nach gemeinsamen Werten',
          'en': 'I am happy living by shared values',
        },
        scores: {
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.faeStadt: 3,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Beides hat seinen Platz — ich passe mich an',
          'en': 'Both have their place — I adapt',
        },
        scores: {
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Ich folge keiner Seite — nur meinen eigenen Regeln',
          'en': 'I follow neither side — only my own rules',
        },
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.wyvernFrost: 1,
        },
      ),
    ],
  ),
];
