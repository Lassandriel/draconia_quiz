import '../models/dragon_type.dart';
import '../models/quiz_question.dart';

const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    text: {
      'de': 'Wo fühlst du dich am lebendigsten?',
      'en': 'Where do you feel most alive?',
      'es': '¿Dónde te sientes más vivo?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Hoch über den Wolken, im Licht der Sonne',
          'en': 'High above the clouds, in the light of the sun',
          'es': 'Muy por encima de las nubes, bajo la luz del sol',
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
          'es': 'En lo profundo del bosque, entre musgo y árboles ancestrales',
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
          'es': 'En un volcán, rodeado de fuego y lava',
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
          'es': 'En las profundidades del océano',
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
          'es': 'En cavernas en lo más hondo de la roca',
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
          'es': 'En el frío glacial, entre el hielo eterno',
        },
        scores: {DragonSubtype.wyvernFrost: 3},
      ),
      QuizAnswer(
        text: {
          'de': 'An steilen Klippen und in weiter Steppe',
          'en': 'On steep cliffs and across open steppe',
          'es': 'En acantilados escarpados y en la estepa abierta',
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
      'es': '¿Cómo afrontas los conflictos?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich handle direkt und mit Stärke',
          'en': 'I act directly and with strength',
          'es': 'Actúo de forma directa y con fuerza',
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
          'es': 'Primero observo y planifico con táctica',
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
          'es': 'Busco el entendimiento y la diplomacia',
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
          'es': 'Lo esquivo y lo resuelvo a mi manera',
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
      'es': '¿Qué es lo que más te impulsa?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Freiheit und Abenteuer',
          'en': 'Freedom and adventure',
          'es': 'La libertad y la aventura',
        },
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
          'es': 'El conocimiento y desvelar secretos',
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
          'es': 'Proteger a mi familia y a mi comunidad',
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
          'es': 'Crear, fabricar, construir',
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
      'es': '¿Qué clima encaja mejor contigo?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Gewitter — elektrisch und wild',
          'en': 'Thunderstorm — electric and wild',
          'es': 'Tormenta — eléctrica y salvaje',
        },
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheFeuer: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Strahlender Sonnenschein',
          'en': 'Bright sunshine',
          'es': 'Sol radiante',
        },
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
          'es': 'Niebla densa y luz de luna',
        },
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.faeWald: 1,
        },
      ),
      QuizAnswer(
        text: {
          'de': 'Eisige Kälte und Stille',
          'en': 'Icy cold and silence',
          'es': 'Frío glacial y silencio',
        },
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
      'es': '¿Cómo prefieres desplazarte?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Rasend schnell — nichts kann mich aufhalten',
          'en': 'Blazing fast — nothing can stop me',
          'es': 'A toda velocidad — nada puede detenerme',
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
          'es': 'Flotando con elegancia, casi en silencio',
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
          'es': 'Por el agua o bajo tierra',
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
          'es': 'Con poderosos aletazos, imponente',
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
      'es': '¿Cuál es tu mayor fortaleza?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Physische Kraft und Unverwundbarkeit',
          'en': 'Physical power and invulnerability',
          'es': 'La fuerza física y la invulnerabilidad',
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
          'es': 'La intuición y la profundidad emocional',
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
          'es': 'La adaptabilidad y el ingenio',
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
          'es': 'Un carisma radiante y el liderazgo',
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
      'es': '¿Cómo sería tu hogar?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Eine Festung aus Stein, tief in der Erde',
          'en': 'A fortress of stone, deep in the earth',
          'es': 'Una fortaleza de piedra, en lo profundo de la tierra',
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
          'es': 'Un nido en lo más alto, donde nadie más puede llegar',
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
          'es': 'Un palacio magnífico, elegante y luminoso',
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
          'es': 'Sin hogar fijo — siempre estoy en marcha',
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
      'es': '¿Qué color te atrae más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Gold und Weiß — leuchtend und warm',
          'en': 'Gold and white — radiant and warm',
          'es': 'Oro y blanco — luminoso y cálido',
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
          'es': 'Azul oscuro y púrpura — misterioso y profundo',
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
          'es': 'Negro y naranja — poderoso y peligroso',
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
          'es': 'Verde y marrón — arraigado y lleno de vida',
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
      'es': 'En un grupo, sueles ser quien...',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': '...die Richtung vorgibt und anführt',
          'en': '...sets the direction and leads',
          'es': '...marca el rumbo y lidera',
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
          'es': '...mantiene a todos unidos y procura la armonía',
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
          'es': '...trabaja a solas en segundo plano haciendo lo importante',
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
          'es': '...anima el ambiente con una ocurrencia ingeniosa',
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
      'es': '¿Cuál de estas frases encaja mejor contigo?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich bin mächtig, aber sehne mich nach Ruhe',
          'en': 'I am powerful, but long for peace',
          'es': 'Soy poderoso, pero anhelo paz',
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
          'es': 'Soy libre, pero a veces me siento solo',
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
          'es': 'Pertenezco al mundo, pero me siento un extraño en él',
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
          'es': 'Me adapto, pero nunca sé del todo quién soy',
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
      'es': '¿Qué habilidad deseas más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Dinge aus dem Nichts erschaffen',
          'en': 'Create things from nothing',
          'es': 'Crear cosas de la nada',
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
          'es': 'Tejer ilusiones e influir en los sueños',
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
          'es': 'Controlar rayos y tormentas',
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
          'es': 'Irradiar luz pura que ahuyenta la oscuridad',
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
      'es': '¿Cómo tomas las decisiones importantes?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Aus dem Bauch heraus — sofort',
          'en': 'From my gut — immediately',
          'es': 'Por instinto — de inmediato',
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
          'es': 'Tras una larga observación y análisis',
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
          'es': 'Escucho a mi corazón y a mis sentimientos',
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
          'es': 'Miro qué es lo mejor para todos',
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
      'es': '¿Dónde te gustaría vivir más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'In einer prächtigen Hauptstadt voller Macht und Glanz',
          'en': 'In a grand capital full of power and splendor',
          'es': 'En una gran capital llena de poder y esplendor',
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
          'es': 'En una ciudad llena de investigación y conocimiento',
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
          'es': 'En ningún sitio fijo — siempre viajando a lugares nuevos',
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
          'es':
              'En las regiones más salvajes: volcanes, tormentas, mar profundo',
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
      'es': '¿Qué labor te llenaría?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Sturmreiter — mitten im wildesten Geschehen',
          'en': 'Storm Rider — right in the thick of the action',
          'es': 'Jinete de tormentas — en plena acción',
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
          'es': 'Constructor — planifico y doy forma al mundo',
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
          'es': 'Maestro herrero — forjo cosas que duran para siempre',
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
          'es': 'Sanador — ayudo en silencio, en segundo plano',
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
      'es': 'Tienes un pasatiempo secreto — ¿cuál?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich schreibe Geschichten über ein ganz normales Leben',
          'en': 'I write stories about a totally normal life',
          'es': 'Escribo historias sobre una vida totalmente normal',
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
          'es': 'Construyo a mano diminutos mundos en miniatura',
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
          'es': 'Cuido de mis plantas en secreto',
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
          'es': 'Devoro a escondidas novelas románticas cursis',
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
      'es':
          'Un poder oscuro amenaza la existencia de todos los dragones. ¿Qué haces?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de':
              'Ich stelle mich allein dazwischen — und gebe notfalls mein Leben',
          'en': 'I stand in its path alone — and give my life if I must',
          'es':
              'Me interpongo en su camino yo solo — y doy mi vida si hace falta',
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
          'es':
              'Uno a todos los dragones bajo mi mando y los llevo a la batalla',
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
          'es':
              'Salvo nuestro conocimiento y a nuestras crías — y reconstruyo si hace falta',
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
          'es':
              'Tomo la decisión fría: sacrificar a unos pocos para salvar a muchos',
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
          'es':
              'Recurro a medios que ningún otro se atreve a usar — cueste lo que cueste',
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
      'es': '¿Qué tipo de fiesta te entusiasmaría más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ein Gemeinschaftsfest, bei dem alle zusammenkommen',
          'en': 'A community festival where everyone comes together',
          'es': 'Una fiesta comunitaria donde todos se reúnen',
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
          'es': 'Una feria comercial donde se encuentran culturas distintas',
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
          'es': 'Un torneo lleno de competiciones y espectáculo',
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
          'es': 'Una ceremonia solemne llena de magia ancestral',
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
      'es': '¿Qué opinas de las reglas y la comunidad?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Regeln bremsen mich — ich folge meiner Natur',
          'en': 'Rules hold me back — I follow my own nature',
          'es': 'Las reglas me frenan — sigo mi propia naturaleza',
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
          'es': 'Me gusta vivir según valores compartidos',
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
          'es': 'Ambas tienen su lugar — me adapto',
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
          'es': 'No sigo a ningún bando — solo mis propias reglas',
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
