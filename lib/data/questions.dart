import '../models/dragon_type.dart';
import '../models/quiz_question.dart';

const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    textDe: 'Wo fühlst du dich am lebendigsten?',
    textEn: 'Where do you feel most alive?',
    answers: [
      QuizAnswer(
        textDe: 'Hoch über den Wolken, im Licht der Sonne',
        textEn: 'High above the clouds, in the light of the sun',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 3,
          DragonSubtype.amphithereSonne: 2,
          DragonSubtype.lungFeuerLicht: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Tief im Wald, zwischen Moos und alten Bäumen',
        textEn: 'Deep in the forest, among moss and ancient trees',
        scores: {
          DragonSubtype.faeWald: 3,
          DragonSubtype.lindwurmSumpf: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.faeStadt: 1,
        },
      ),
      QuizAnswer(
        textDe: 'An einem Vulkan, umgeben von Feuer und Lava',
        textEn: 'At a volcano, surrounded by fire and lava',
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lungFeuer: 2,
          DragonSubtype.lungFeuerLicht: 2,
        },
      ),
      QuizAnswer(
        textDe: 'In den Tiefen des Ozeans',
        textEn: 'In the depths of the ocean',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
        },
      ),
      QuizAnswer(
        textDe: 'In Höhlen tief im Stein',
        textEn: 'In caves deep within the stone',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.lindwurmMagma: 1,
        },
      ),
      QuizAnswer(
        textDe: 'In eisiger Kälte, im ewigen Eis',
        textEn: 'In icy cold, amid eternal ice',
        scores: {
          DragonSubtype.wyvernFrost: 3,
        },
      ),
      QuizAnswer(
        textDe: 'An steilen Klippen und in weiter Steppe',
        textEn: 'On steep cliffs and across open steppe',
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
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
    textDe: 'Was trifft am ehesten auf dich zu?',
    textEn: 'Which of these fits you best?',
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
    textDe: 'Wo würdest du am liebsten leben?',
    textEn: 'Where would you most like to live?',
    answers: [
      QuizAnswer(
        textDe: 'In einer prächtigen Hauptstadt voller Macht und Glanz',
        textEn: 'In a grand capital full of power and splendor',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.grossdracheKristall: 2,
        },
      ),
      QuizAnswer(
        textDe: 'In einer Stadt voller Forschung und Wissen',
        textEn: 'In a city full of research and knowledge',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.amphithereTraum: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Nirgends fest — immer unterwegs zu neuen Orten',
        textEn: 'Nowhere fixed — always travelling to new places',
        scores: {
          DragonSubtype.grossdracheWind: 3,
          DragonSubtype.lungFeuerLicht: 2,
          DragonSubtype.wyvernSturm: 2,
          DragonSubtype.amphithereTraum: 2,
        },
      ),
      QuizAnswer(
        textDe: 'In den wildesten Regionen: Vulkane, Stürme, Tiefsee',
        textEn: 'In the wildest regions: volcanoes, storms, deep sea',
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
    textDe: 'Welche Aufgabe würde dich erfüllen?',
    textEn: 'What kind of work would fulfil you?',
    answers: [
      QuizAnswer(
        textDe: 'Sturmreiter — mitten im wildesten Geschehen',
        textEn: 'Storm Rider — right in the thick of the action',
        scores: {
          DragonSubtype.seraphGewitter: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.grossdracheWind: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Baumeister — ich plane und forme die Welt',
        textEn: 'Builder — I plan and shape the world',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.grossdracheGezeitenTraum: 2,
          DragonSubtype.grossdracheErde: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Meisterschmied — ich erschaffe Dinge, die ewig halten',
        textEn: 'Master Smith — I forge things that last forever',
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.lindwurmMagma: 3,
          DragonSubtype.grossdracheKristall: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Heiler — ich helfe still im Hintergrund',
        textEn: 'Healer — I help quietly in the background',
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
        textDe: 'Ich schreibe Geschichten über ein ganz normales Leben',
        textEn: 'I write stories about a totally normal life',
        scores: {
          DragonSubtype.grossdracheGezeitenTraum: 3,
          DragonSubtype.amphithereTraum: 3,
          DragonSubtype.faeWald: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich baue winzige Miniaturwelten von Hand',
        textEn: 'I build tiny miniature worlds by hand',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.lindwurmSumpf: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich päppele heimlich Pflanzen auf',
        textEn: 'I secretly tend to my plants',
        scores: {
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.faeWald: 3,
          DragonSubtype.faeStadt: 2,
          DragonSubtype.wyvernSturm: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich verschlinge heimlich kitschige Liebesromane',
        textEn: 'I secretly devour cheesy romance novels',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
    ],
  ),

  QuizQuestion(
    textDe: 'Eine dunkle Macht bedroht die Existenz aller Drachen. Was tust du?',
    textEn: 'A dark power threatens the existence of all dragonkind. What do you do?',
    answers: [
      QuizAnswer(
        textDe: 'Ich stelle mich allein dazwischen — und gebe notfalls mein Leben',
        textEn: 'I stand in its path alone — and give my life if I must',
        scores: {
          DragonSubtype.grossdracheErde: 3,
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich eine alle Drachen unter mir und führe sie in den Kampf',
        textEn: 'I unite all dragons under me and lead them into battle',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungFeuerLicht: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.amphithereSonne: 2,
          DragonSubtype.seraphGewitter: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich rette Wissen und Brut — und baue notfalls neu auf',
        textEn: 'I save our knowledge and our young — and rebuild if I must',
        scores: {
          DragonSubtype.seraphAether: 3,
          DragonSubtype.grossdracheKristall: 2,
          DragonSubtype.faeWald: 2,
          DragonSubtype.amphithereTraum: 2,
          DragonSubtype.grossdracheGezeitenTraum: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich treffe die kalte Wahl: wenige opfern, um viele zu retten',
        textEn: 'I make the cold choice: sacrifice the few to save the many',
        scores: {
          DragonSubtype.wyvernFrost: 3,
          DragonSubtype.leviathanMagma: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.grossdracheErde: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ich greife zu Mitteln, die kein anderer wagt — um jeden Preis',
        textEn: 'I turn to means no other dares — whatever the cost',
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
    textDe: 'Welches Fest würde dich am meisten begeistern?',
    textEn: 'Which kind of festival would excite you the most?',
    answers: [
      QuizAnswer(
        textDe: 'Ein Gemeinschaftsfest, bei dem alle zusammenkommen',
        textEn: 'A community festival where everyone comes together',
        scores: {
          DragonSubtype.grossdracheSonne: 3,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.grossdracheWind: 2,
          DragonSubtype.amphithereSonne: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ein Handelsfest, wo fremde Kulturen aufeinandertreffen',
        textEn: 'A trade festival where foreign cultures meet',
        scores: {
          DragonSubtype.leviathanGezeiten: 3,
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.faeStadt: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Ein Kräftemessen voller Wettkämpfe und Spektakel',
        textEn: 'A tournament full of contests and spectacle',
        scores: {
          DragonSubtype.grossdracheFeuer: 3,
          DragonSubtype.wyvernSturm: 3,
          DragonSubtype.seraphGewitter: 2,
          DragonSubtype.lindwurmMagma: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Eine feierliche Zeremonie voller uralter Magie',
        textEn: 'A solemn ceremony full of ancient magic',
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
    textDe: 'Wie stehst du zu Regeln und Gemeinschaft?',
    textEn: 'How do you feel about rules and community?',
    answers: [
      QuizAnswer(
        textDe: 'Regeln bremsen mich — ich folge meiner Natur',
        textEn: 'Rules hold me back — I follow my own nature',
        scores: {
          DragonSubtype.leviathanMagma: 3,
          DragonSubtype.grossdracheFeuer: 2,
          DragonSubtype.lindwurmMagma: 2,
          DragonSubtype.wyvernSturm: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich lebe gern nach gemeinsamen Werten',
        textEn: 'I am happy living by shared values',
        scores: {
          DragonSubtype.grossdracheKristall: 3,
          DragonSubtype.faeStadt: 3,
          DragonSubtype.seraphAether: 1,
        },
      ),
      QuizAnswer(
        textDe: 'Beides hat seinen Platz — ich passe mich an',
        textEn: 'Both have their place — I adapt',
        scores: {
          DragonSubtype.grossdracheSonne: 2,
          DragonSubtype.grossdracheErde: 2,
          DragonSubtype.lungLicht: 2,
          DragonSubtype.leviathanGezeiten: 2,
        },
      ),
      QuizAnswer(
        textDe: 'Ich folge keiner Seite — nur meinen eigenen Regeln',
        textEn: 'I follow neither side — only my own rules',
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
