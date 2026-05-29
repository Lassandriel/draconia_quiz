import '../models/dragon_type.dart';
import '../models/quiz_question.dart';

const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    textDe: 'Wo fühlst du dich am wohlsten?',
    textEn: 'Where do you feel most at home?',
    answers: [
      QuizAnswer(
        textDe: 'Hoch in den Lüften, über den Wolken',
        textEn: 'High in the sky, above the clouds',
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.seraphAether: 3,
          DragonSubtype.lungLicht: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Tief im Wald, umgeben von Natur',
        textEn: 'Deep in the forest, surrounded by nature',
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        textDe: 'In einer pulsierenden Stadt voller Leben',
        textEn: 'In a lively city full of energy',
        scores: {
          DragonSubtype.faeStadt: 3,
          DragonSubtype.grossdracheKristall: 1,
          DragonSubtype.lungFeuer: 1,
        },
      ),
      QuizAnswer(
        textDe: 'In der Tiefe — Lava, Wasser oder Erde',
        textEn: 'In the depths — lava, water, or earth',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.grossdracheErde: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    textDe: 'Wie gehst du mit Konflikten um?',
    textEn: 'How do you handle conflict?',
    answers: [
      QuizAnswer(
        textDe: 'Ich handle direkt und mit Stärke',
        textEn: 'I act directly and with strength',
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.seraphGewitter: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich beobachte zuerst und plane taktisch',
        textEn: 'I observe first and plan tactically',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.wyvernFrost: 2,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich versuche Verständnis und Diplomatie',
        textEn: 'I seek understanding and diplomacy',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 3,
          DragonSubtype.amphithereSonne: 2,
          DragonSubtype.grossdracheKristall: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich weiche aus und löse es auf meine eigene Art',
        textEn: 'I evade and solve it in my own way',
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
    textDe: 'Was treibt dich am stärksten an?',
    textEn: 'What motivates you the most?',
    answers: [
      QuizAnswer(
        textDe: 'Freiheit und Abenteuer',
        textEn: 'Freedom and adventure',
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Wissen und Geheimnisse lüften',
        textEn: 'Knowledge and uncovering secrets',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.amphithereTraum: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Meine Familie und Gemeinschaft schützen',
        textEn: 'Protecting my family and community',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.lungLicht: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Erschaffen, handwerken, bauen',
        textEn: 'Creating, crafting, building',
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
    textDe: 'Welches Wetter passt am besten zu dir?',
    textEn: 'Which weather suits you best?',
    answers: [
      QuizAnswer(
        textDe: 'Gewitter — elektrisch und wild',
        textEn: 'Thunderstorm — electric and wild',
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheFeuer: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Strahlender Sonnenschein',
        textEn: 'Bright sunshine',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.amphithereSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.lungFeuerLicht: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Tiefer Nebel und Mondschein',
        textEn: 'Deep fog and moonlight',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.faeWald: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Eisige Kälte und Stille',
        textEn: 'Icy cold and silence',
        scores: {
          DragonSubtype.wyvernFrost: 3,
          DragonSubtype.seraphAether: 2,
          DragonSubtype.leviathanGezeiten: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    textDe: 'Wie bewegst du dich am liebsten fort?',
    textEn: 'How do you prefer to move?',
    answers: [
      QuizAnswer(
        textDe: 'Rasend schnell — nichts kann mich aufhalten',
        textEn: 'Blazing fast — nothing can stop me',
        scores: {
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.lungFeuerLicht: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Schwebend und anmutig, fast lautlos',
        textEn: 'Floating gracefully, almost silent',
        scores: {
          DragonSubtype.lungLicht: 3,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Durch das Wasser oder unterirdisch',
        textEn: 'Through water or underground',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.lindwurmSumpf: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Mit mächtigen Flügelschlägen, imposant',
        textEn: 'With powerful wingbeats, imposing',
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
    textDe: 'Was ist deine größte Stärke?',
    textEn: 'What is your greatest strength?',
    answers: [
      QuizAnswer(
        textDe: 'Physische Kraft und Unverwundbarkeit',
        textEn: 'Physical power and invulnerability',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.wyvernFrost: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Intuition und emotionale Tiefe',
        textEn: 'Intuition and emotional depth',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Anpassungsfähigkeit und Cleverness',
        textEn: 'Adaptability and cleverness',
        scores: {
          DragonSubtype.faeStadt: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.amphithereSonne: 1,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Strahlendes Charisma und Führungsstärke',
        textEn: 'Radiant charisma and leadership',
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
    textDe: 'Was wäre dein Zuhause?',
    textEn: 'What would your home be like?',
    answers: [
      QuizAnswer(
        textDe: 'Eine Festung aus Stein, tief in der Erde',
        textEn: 'A fortress of stone, deep in the earth',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.lindwurmMagma: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ein Nest ganz oben, wo kein anderer hinkommt',
        textEn: 'A nest at the very top, where no one else can reach',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ein prächtiger Palast, elegant und leuchtend',
        textEn: 'A magnificent palace, elegant and radiant',
        scores: {
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.amphithereSonne: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Kein festes Zuhause — ich bin ständig unterwegs',
        textEn: 'No fixed home — I\'m always on the move',
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
    textDe: 'Welche Farbe zieht dich am meisten an?',
    textEn: 'Which color draws you in the most?',
    answers: [
      QuizAnswer(
        textDe: 'Gold und Weiß — leuchtend und warm',
        textEn: 'Gold and white — radiant and warm',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Dunkelblau und Lila — geheimnisvoll und tief',
        textEn: 'Dark blue and purple — mysterious and deep',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Schwarz und Orange — kraftvoll und gefährlich',
        textEn: 'Black and orange — powerful and dangerous',
        scores: {
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lungFeuer: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Grün und Braun — verwurzelt und lebendig',
        textEn: 'Green and brown — rooted and alive',
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.lindwurmSumpf: 3,
          DragonSubtype.faeStadt: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    textDe: 'In einer Gruppe übernimmst du die Rolle...',
    textEn: 'In a group, you tend to be the one who...',
    answers: [
      QuizAnswer(
        textDe: '...die Richtung vorgibt und anführt',
        textEn: '...sets the direction and leads',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.seraphGewitter: 1,
        },
      ),
      QuizAnswer(
        textDe: '...alle zusammenhält und für Harmonie sorgt',
        textEn: '...holds everyone together and ensures harmony',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        textDe: '...alleine im Hintergrund die wichtige Arbeit macht',
        textEn: '...works alone in the background doing the important work',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.faeWald: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.wyvernFrost: 2,
        },
      ),
      QuizAnswer(
        textDe: '...mit einem Streich die Stimmung auflockert',
        textEn: '...lightens the mood with a clever trick',
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
    textDe: 'Dein größter innerer Widerspruch ist...',
    textEn: 'Your greatest inner contradiction is...',
    answers: [
      QuizAnswer(
        textDe: 'Ich bin mächtig, aber sehne mich nach Ruhe',
        textEn: 'I am powerful, but long for peace',
        scores: {
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lungFeuer: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.lindwurmMagma: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich bin frei, aber fühle mich manchmal einsam',
        textEn: 'I am free, but sometimes feel lonely',
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.seraphAether: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich gehöre zur Welt, aber fühle mich fremd darin',
        textEn: 'I belong to the world, but feel like a stranger in it',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.seraphAether: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernFrost: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich passe mich an, aber weiß nie ganz, wer ich bin',
        textEn: 'I adapt, but never quite know who I am',
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
    textDe: 'Welche Fähigkeit wünschst du dir am meisten?',
    textEn: 'Which ability do you wish for the most?',
    answers: [
      QuizAnswer(
        textDe: 'Dinge aus dem Nichts erschaffen',
        textEn: 'Create things from nothing',
        scores: {
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Illusionen weben und Träume beeinflussen',
        textEn: 'Weave illusions and influence dreams',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Blitze und Stürme kontrollieren',
        textEn: 'Control lightning and storms',
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Reines Licht ausstrahlen, das Dunkelheit vertreibt',
        textEn: 'Radiate pure light that drives away darkness',
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
    textDe: 'Wie triffst du wichtige Entscheidungen?',
    textEn: 'How do you make important decisions?',
    answers: [
      QuizAnswer(
        textDe: 'Aus dem Bauch heraus — sofort',
        textEn: 'From my gut — immediately',
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.seraphGewitter: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Nach langer Beobachtung und Analyse',
        textEn: 'After long observation and analysis',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.leviathanMagma: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich höre auf mein Herz und meine Gefühle',
        textEn: 'I listen to my heart and feelings',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.faeWald: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich schaue, was am besten für alle ist',
        textEn: 'I look at what\'s best for everyone',
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
    textDe: 'Welche Umgebung wäre dein idealer Lebensraum in einer Fantasywelt?',
    textEn: 'What environment would be your ideal habitat in a fantasy world?',
    answers: [
      QuizAnswer(
        textDe: 'Eine prächtige Hauptstadt — Macht, Glanz und das Herz der Zivilisation',
        textEn: 'A magnificent capital — power, splendor and the heart of civilization',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.grossdracheKristall: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Eine Universitätsstadt — Forschung, Erfindungen und Wissensdurst',
        textEn: 'A university city — research, inventions and thirst for knowledge',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Kein fester Ort — ich wandere und entdecke neue Regionen',
        textEn: 'No fixed place — I wander and discover new regions',
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.amphithereTraum: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Die unwirtlichsten Extremregionen — Vulkane, Sturmzonen oder Tiefsee',
        textEn: 'The most inhospitable extreme regions — volcanoes, storm zones or the deep',
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
    textDe: 'Welcher Beruf würde dich in einer Welt aus Magie und Drachen am meisten erfüllen?',
    textEn: 'Which profession would fulfil you most in a world of magic and dragons?',
    answers: [
      QuizAnswer(
        textDe: 'Sturmreiter oder Kurierläufer — immer mitten im wildesten Geschehen',
        textEn: 'Storm Rider or Express Courier — always in the middle of the wildest action',
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Architekt oder Navigator — ich plane und forme, wie die Welt funktioniert',
        textEn: 'Architect or Navigator — I plan and shape how the world works',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
          DragonSubtype.grossdracheErde: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Meisterschmied — ich erschaffe Dinge aus dem Feuer, die Generationen überdauern',
        textEn: 'Master Smith — I forge things from fire that outlast generations',
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.grossdracheKristall: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Heiler oder Kräuterkundiger — ich helfe still und werde oft übersehen',
        textEn: 'Healer or Herbalist — I help quietly and am often overlooked',
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
    textDe: 'Du hast ein geheimes Hobby — welches?',
    textEn: 'You have a secret hobby — which one?',
    answers: [
      QuizAnswer(
        textDe: 'Ich schreibe Geschichten, in denen ich ein völlig normales Leben führe',
        textEn: 'I write stories where I live a completely normal life',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.faeWald: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich baue detaillierte Miniaturwelten — mit den Händen, ganz ohne Hilfsmittel',
        textEn: 'I build detailed miniature worlds — by hand, without any tools',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.lindwurmSumpf: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich beschäftige mich heimlich mit Pflanzen und finde es eigentlich uncool',
        textEn: 'I secretly tend to plants and honestly find it kind of uncool',
        scores: {
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.faeWald: 3,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.wyvernSturm: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich verschlinge kitschige Liebesromane und will, dass das niemand weiß',
        textEn: 'I devour cheesy romance novels and want nobody to know',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    textDe: 'Eine dunkle Bedrohung steigt aus der Tiefe auf und gefährdet die Welt. Was tust du?',
    textEn: 'A dark threat rises from the depths and endangers the world. What do you do?',
    answers: [
      QuizAnswer(
        textDe: 'Ich handle sofort und allein — keine Zeit für Umwege',
        textEn: 'I act immediately and alone — no time for detours',
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.lungFeuer: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernSturm: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich analysiere sie erst gründlich, dann plane ich den perfekten Gegenschlag',
        textEn: 'I study it thoroughly first, then plan the perfect counterstrike',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.seraphAether: 2,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.wyvernFrost: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich sammle Verbündete und koordiniere eine gemeinsame Antwort',
        textEn: 'I gather allies and coordinate a joint response',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.leviathanGezeiten: 2,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.faeStadt: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich beobachte aus sicherer Distanz, kartografiere die Bedrohung und berichte',
        textEn: 'I observe from a safe distance, map the threat and report back',
        scores: {
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.seraphAether: 3,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.grossdracheGezeitenTraum: 1,
        },
      ),
    ],
  ),

  QuizQuestion(
    textDe: 'Welches Fest würde dich am meisten begeistern?',
    textEn: 'Which kind of festival would excite you the most?',
    answers: [
      QuizAnswer(
        textDe: 'Ein Gemeinschaftsfest — alle fliegen zusammen und geben der Welt Energie zurück',
        textEn: 'A community festival — everyone flies together and gives energy back to the world',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ein Handelsfest — zwei völlig verschiedene Kulturen treffen sich zum Tausch',
        textEn: 'A trade festival — two completely different cultures meet to exchange',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.faeStadt: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ein Kräftemessen — Wettkämpfe, Machtdemonstrationen, Spektakel',
        textEn: 'A tournament — contests, displays of power, spectacle',
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.lindwurmMagma: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Eine feierliche Zeremonie — ruhig, bedeutungsvoll, mit uralter Magie',
        textEn: 'A solemn ceremony — quiet, meaningful, with ancient magic',
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
    textDe: 'Wie siehst du das Verhältnis zwischen deiner inneren Natur und der Gesellschaft?',
    textEn: 'How do you see the relationship between your inner nature and society?',
    answers: [
      QuizAnswer(
        textDe: 'Meine wahre, rohe Natur ist alles — Regeln und Konventionen bremsen mich',
        textEn: 'My true, raw nature is everything — rules and conventions hold me back',
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.wyvernSturm: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Kultur und Zivilisation erheben uns — ich lebe gerne nach gemeinsamen Werten',
        textEn: 'Culture and civilization elevate us — I enjoy living by shared values',
        scores: {
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.faeStadt: 3,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Beides hat seinen Platz — ich wechsle je nach Situation',
        textEn: 'Both have their place — I switch depending on the situation',
        scores: {
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich folge keiner Seite — meine eigenen Regeln gelten, abseits aller Gruppen',
        textEn: 'I follow neither side — my own rules apply, away from all groups',
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
