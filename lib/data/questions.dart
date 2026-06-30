import '../models/dragon_type.dart';
import '../models/quiz_question.dart';

const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    text: {
      'de': 'Wo fühlst du dich am lebendigsten?',
      'en': 'Where do you feel most alive?',
      'ja': 'どこにいるとき、最も生きていると感じる？',
      'ru': 'Где ты чувствуешь себя живее всего?',
      'pt': 'Onde você se sente mais vivo?',
      'fr': 'Où te sens-tu le plus vivant ?',
      'es': '¿Dónde te sientes más vivo?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Hoch über den Wolken, im Licht der Sonne',
          'en': 'High above the clouds, in the light of the sun',
          'ja': '雲のはるか上、太陽の光の中で',
          'ru': 'Высоко над облаками, в свете солнца',
          'pt': 'Bem acima das nuvens, sob a luz do sol',
          'fr': 'Très haut au-dessus des nuages, dans la lumière du soleil',
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
          'ja': '森の奥深く、苔と古い木々の間で',
          'ru': 'В глубине леса, среди мха и древних деревьев',
          'pt':
              'Nas profundezas da floresta, entre o musgo e as árvores ancestrais',
          'fr':
              'Au plus profond de la forêt, parmi la mousse et les arbres anciens',
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
          'ja': '火山のそば、炎と溶岩に囲まれて',
          'ru': 'У вулкана, в окружении огня и лавы',
          'pt': 'Em um vulcão, cercado por fogo e lava',
          'fr': 'Près d\'un volcan, entouré de feu et de lave',
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
          'ja': '大海の深みで',
          'ru': 'В глубинах океана',
          'pt': 'Nas profundezas do oceano',
          'fr': 'Dans les profondeurs de l\'océan',
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
          'ja': '岩の奥深くの洞窟で',
          'ru': 'В пещерах глубоко в камне',
          'pt': 'Em cavernas nas profundezas da rocha',
          'fr': 'Dans des grottes au cœur de la pierre',
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
          'ja': '凍てつく寒さの中、永遠の氷の只中で',
          'ru': 'В ледяном холоде, среди вечных льдов',
          'pt': 'No frio glacial, em meio ao gelo eterno',
          'fr': 'Dans un froid glacial, au milieu des glaces éternelles',
          'es': 'En el frío glacial, entre el hielo eterno',
        },
        scores: {DragonSubtype.wyvernFrost: 3},
      ),
      QuizAnswer(
        text: {
          'de': 'An steilen Klippen und in weiter Steppe',
          'en': 'On steep cliffs and across open steppe',
          'ja': '切り立った崖や、広大な草原で',
          'ru': 'На отвесных скалах и в бескрайней степи',
          'pt': 'Em penhascos íngremes e na estepe aberta',
          'fr': 'Sur des falaises abruptes et dans la vaste steppe',
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
      'ja': '争いごとにどう向き合う？',
      'ru': 'Как ты справляешься с конфликтами?',
      'pt': 'Como você lida com conflitos?',
      'fr': 'Comment gères-tu les conflits ?',
      'es': '¿Cómo afrontas los conflictos?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich handle direkt und mit Stärke',
          'en': 'I act directly and with strength',
          'ja': 'まっすぐ、力をもって動く',
          'ru': 'Действую прямо и с силой',
          'pt': 'Ajo de forma direta e com força',
          'fr': 'J\'agis directement et avec force',
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
          'ja': 'まず観察し、戦略的に計画する',
          'ru': 'Сначала наблюдаю и планирую тактически',
          'pt': 'Primeiro observo e planejo com tática',
          'fr': 'J\'observe d\'abord et je planifie avec tactique',
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
          'ja': '理解と対話を求める',
          'ru': 'Ищу понимание и дипломатию',
          'pt': 'Busco o entendimento e a diplomacia',
          'fr': 'Je cherche la compréhension et la diplomatie',
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
          'ja': 'かわして、自分なりのやり方で解決する',
          'ru': 'Уклоняюсь и решаю по-своему',
          'pt': 'Desvio e resolvo do meu próprio jeito',
          'fr': 'Je les esquive et je les règle à ma manière',
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
      'ja': '何に最も突き動かされる？',
      'ru': 'Что движет тобой сильнее всего?',
      'pt': 'O que mais te motiva?',
      'fr': 'Qu\'est-ce qui te motive le plus ?',
      'es': '¿Qué es lo que más te impulsa?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Freiheit und Abenteuer',
          'en': 'Freedom and adventure',
          'ja': '自由と冒険',
          'ru': 'Свобода и приключения',
          'pt': 'Liberdade e aventura',
          'fr': 'La liberté et l\'aventure',
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
          'ja': '知識と、秘密を解き明かすこと',
          'ru': 'Знания и раскрытие тайн',
          'pt': 'Conhecimento e desvendar segredos',
          'fr': 'Le savoir et la découverte des secrets',
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
          'ja': '家族と仲間を守ること',
          'ru': 'Защита моей семьи и сообщества',
          'pt': 'Proteger minha família e comunidade',
          'fr': 'Protéger ma famille et ma communauté',
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
          'ja': '創り、作り、築くこと',
          'ru': 'Творить, мастерить, строить',
          'pt': 'Criar, fabricar, construir',
          'fr': 'Créer, fabriquer, construire',
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
      'ja': 'どんな天気が一番しっくりくる？',
      'ru': 'Какая погода подходит тебе больше всего?',
      'pt': 'Qual clima combina mais com você?',
      'fr': 'Quel temps te correspond le mieux ?',
      'es': '¿Qué clima encaja mejor contigo?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Gewitter — elektrisch und wild',
          'en': 'Thunderstorm — electric and wild',
          'ja': '雷雨 — 電気を帯びて荒々しい',
          'ru': 'Гроза — электрическая и дикая',
          'pt': 'Tempestade — elétrica e selvagem',
          'fr': 'L\'orage — électrique et sauvage',
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
          'ja': '輝く陽射し',
          'ru': 'Яркое солнце',
          'pt': 'Sol radiante',
          'fr': 'Un soleil éclatant',
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
          'ja': '深い霧と月明かり',
          'ru': 'Густой туман и лунный свет',
          'pt': 'Névoa densa e luar',
          'fr': 'Un brouillard épais et le clair de lune',
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
          'ja': '凍える寒さと静寂',
          'ru': 'Ледяной холод и тишина',
          'pt': 'Frio glacial e silêncio',
          'fr': 'Un froid glacial et le silence',
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
      'ja': 'どう動くのが好き？',
      'ru': 'Как ты предпочитаешь передвигаться?',
      'pt': 'Como você prefere se locomover?',
      'fr': 'Comment préfères-tu te déplacer ?',
      'es': '¿Cómo prefieres desplazarte?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Rasend schnell — nichts kann mich aufhalten',
          'en': 'Blazing fast — nothing can stop me',
          'ja': '猛烈な速さで — 何も止められない',
          'ru': 'Стремительно быстро — ничто меня не остановит',
          'pt': 'Em altíssima velocidade — nada pode me deter',
          'fr': 'À toute vitesse — rien ne peut m\'arrêter',
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
          'ja': '優雅に、ほとんど音もなく漂う',
          'ru': 'Паря грациозно, почти бесшумно',
          'pt': 'Flutuando com graça, quase em silêncio',
          'fr': 'En planant avec grâce, presque sans bruit',
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
          'ja': '水の中、あるいは地中を',
          'ru': 'По воде или под землёй',
          'pt': 'Pela água ou por baixo da terra',
          'fr': 'Par l\'eau ou sous terre',
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
          'ja': '力強い羽ばたきで、堂々と',
          'ru': 'Мощными взмахами крыльев, внушительно',
          'pt': 'Com poderosas batidas de asas, imponente',
          'fr': 'À grands coups d\'ailes, imposant',
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
      'ja': 'あなたの最大の強みは？',
      'ru': 'В чём твоя самая большая сила?',
      'pt': 'Qual é a sua maior força?',
      'fr': 'Quelle est ta plus grande force ?',
      'es': '¿Cuál es tu mayor fortaleza?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Physische Kraft und Unverwundbarkeit',
          'en': 'Physical power and invulnerability',
          'ja': '肉体の力と不死身さ',
          'ru': 'Физическая мощь и неуязвимость',
          'pt': 'Força física e invulnerabilidade',
          'fr': 'La puissance physique et l\'invulnérabilité',
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
          'ja': '直感と感情の深さ',
          'ru': 'Интуиция и эмоциональная глубина',
          'pt': 'Intuição e profundidade emocional',
          'fr': 'L\'intuition et la profondeur émotionnelle',
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
          'ja': '適応力と機転',
          'ru': 'Гибкость и смекалка',
          'pt': 'Adaptabilidade e esperteza',
          'fr': 'L\'adaptabilité et l\'ingéniosité',
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
          'ja': '輝くカリスマと統率力',
          'ru': 'Сияющая харизма и лидерство',
          'pt': 'Carisma radiante e liderança',
          'fr': 'Un charisme rayonnant et le sens du commandement',
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
      'ja': 'あなたの住まいはどんな場所？',
      'ru': 'Каким был бы твой дом?',
      'pt': 'Como seria o seu lar?',
      'fr': 'À quoi ressemblerait ton chez-toi ?',
      'es': '¿Cómo sería tu hogar?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Eine Festung aus Stein, tief in der Erde',
          'en': 'A fortress of stone, deep in the earth',
          'ja': '大地の奥深くの、石の砦',
          'ru': 'Крепость из камня, глубоко в земле',
          'pt': 'Uma fortaleza de pedra, nas profundezas da terra',
          'fr': 'Une forteresse de pierre, au plus profond de la terre',
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
          'ja': '誰も届かない、一番高いところの巣',
          'ru': 'Гнездо на самой вершине, куда больше никто не доберётся',
          'pt': 'Um ninho bem no alto, onde mais ninguém alcança',
          'fr': 'Un nid tout en haut, là où personne d\'autre ne peut accéder',
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
          'ja': '壮麗な宮殿、優雅で輝かしい',
          'ru': 'Великолепный дворец, изящный и сияющий',
          'pt': 'Um palácio magnífico, elegante e luminoso',
          'fr': 'Un palais magnifique, élégant et lumineux',
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
          'ja': '決まった住まいはない — いつも旅の途中',
          'ru': 'Нет постоянного дома — я всегда в пути',
          'pt': 'Sem lar fixo — estou sempre em movimento',
          'fr': 'Pas de foyer fixe — je suis toujours en mouvement',
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
      'ja': 'どの色に最も惹かれる？',
      'ru': 'Какой цвет привлекает тебя больше всего?',
      'pt': 'Qual cor mais te atrai?',
      'fr': 'Quelle couleur t\'attire le plus ?',
      'es': '¿Qué color te atrae más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Gold und Weiß — leuchtend und warm',
          'en': 'Gold and white — radiant and warm',
          'ja': '金と白 — 輝かしく温かい',
          'ru': 'Золото и белый — сияющий и тёплый',
          'pt': 'Ouro e branco — radiante e caloroso',
          'fr': 'Or et blanc — lumineux et chaleureux',
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
          'ja': '濃紺と紫 — 神秘的で深い',
          'ru': 'Тёмно-синий и фиолетовый — таинственный и глубокий',
          'pt': 'Azul-escuro e roxo — misterioso e profundo',
          'fr': 'Bleu foncé et violet — mystérieux et profond',
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
          'ja': '黒と橙 — 力強く危険な',
          'ru': 'Чёрный и оранжевый — мощный и опасный',
          'pt': 'Preto e laranja — poderoso e perigoso',
          'fr': 'Noir et orange — puissant et dangereux',
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
          'ja': '緑と茶 — 根を張り生命にあふれた',
          'ru': 'Зелёный и коричневый — укоренённый и живой',
          'pt': 'Verde e marrom — enraizado e cheio de vida',
          'fr': 'Vert et brun — enraciné et plein de vie',
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
      'ja': 'グループの中では、あなたはたいてい…',
      'ru': 'В группе ты обычно тот, кто...',
      'pt': 'Em um grupo, você costuma ser quem...',
      'fr': 'Dans un groupe, tu es plutôt celui qui...',
      'es': 'En un grupo, sueles ser quien...',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': '...die Richtung vorgibt und anführt',
          'en': '...sets the direction and leads',
          'ja': '…方向を定め、皆を導く',
          'ru': '...задаёт направление и ведёт за собой',
          'pt': '...define o rumo e lidera',
          'fr': '...donne la direction et mène',
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
          'ja': '…皆をまとめ、調和を保つ',
          'ru': '...сплачивает всех и заботится о гармонии',
          'pt': '...mantém todos unidos e garante a harmonia',
          'fr': '...soude tout le monde et veille à l\'harmonie',
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
          'ja': '…陰でひとり、肝心な仕事をこなす',
          'ru': '...в одиночку за кулисами делает важную работу',
          'pt': '...trabalha sozinho nos bastidores no que é importante',
          'fr': '...travaille seul en coulisses sur l\'essentiel',
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
          'ja': '…気の利いた一言で場を和ませる',
          'ru': '...разряжает обстановку остроумной шуткой',
          'pt': '...descontrai o clima com uma tirada esperta',
          'fr': '...détend l\'atmosphère avec un trait d\'esprit',
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
      'ja': '次のうち、最もあなたに近いのは？',
      'ru': 'Какая из этих фраз подходит тебе больше всего?',
      'pt': 'Qual destas frases combina mais com você?',
      'fr': 'Laquelle de ces phrases te correspond le mieux ?',
      'es': '¿Cuál de estas frases encaja mejor contigo?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich bin mächtig, aber sehne mich nach Ruhe',
          'en': 'I am powerful, but long for peace',
          'ja': '強い力を持つが、安らぎを求めている',
          'ru': 'Я могуществен, но жажду покоя',
          'pt': 'Sou poderoso, mas anseio por paz',
          'fr': 'Je suis puissant, mais j\'aspire à la paix',
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
          'ja': '自由だが、時に孤独を感じる',
          'ru': 'Я свободен, но порой чувствую одиночество',
          'pt': 'Sou livre, mas às vezes me sinto sozinho',
          'fr': 'Je suis libre, mais je me sens parfois seul',
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
          'ja': 'この世界に属しているのに、よそ者のように感じる',
          'ru': 'Я принадлежу миру, но чувствую себя в нём чужим',
          'pt': 'Pertenço ao mundo, mas me sinto um estranho nele',
          'fr': 'J\'appartiens au monde, mais je m\'y sens étranger',
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
          'ja': '順応するが、自分が何者かはっきりとは分からない',
          'ru': 'Я приспосабливаюсь, но никогда толком не знаю, кто я',
          'pt': 'Eu me adapto, mas nunca sei direito quem sou',
          'fr': 'Je m\'adapte, mais je ne sais jamais vraiment qui je suis',
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
      'ja': '最も欲しい力はどれ？',
      'ru': 'Какую способность ты желаешь больше всего?',
      'pt': 'Qual habilidade você mais desejaria?',
      'fr': 'Quel pouvoir souhaiterais-tu le plus ?',
      'es': '¿Qué habilidad deseas más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Dinge aus dem Nichts erschaffen',
          'en': 'Create things from nothing',
          'ja': '無から物を生み出す',
          'ru': 'Создавать вещи из ничего',
          'pt': 'Criar coisas do nada',
          'fr': 'Créer des choses à partir de rien',
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
          'ja': '幻を織りなし、夢に働きかける',
          'ru': 'Плести иллюзии и влиять на сны',
          'pt': 'Tecer ilusões e influenciar sonhos',
          'fr': 'Tisser des illusions et influencer les rêves',
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
          'ja': '雷と嵐を操る',
          'ru': 'Управлять молниями и бурями',
          'pt': 'Controlar raios e tempestades',
          'fr': 'Maîtriser la foudre et les tempêtes',
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
          'ja': '闇を払う純粋な光を放つ',
          'ru': 'Излучать чистый свет, прогоняющий тьму',
          'pt': 'Irradiar luz pura que afasta a escuridão',
          'fr': 'Rayonner d\'une lumière pure qui chasse les ténèbres',
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
      'ja': '大事な決断をどう下す？',
      'ru': 'Как ты принимаешь важные решения?',
      'pt': 'Como você toma decisões importantes?',
      'fr': 'Comment prends-tu les décisions importantes ?',
      'es': '¿Cómo tomas las decisiones importantes?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Aus dem Bauch heraus — sofort',
          'en': 'From my gut — immediately',
          'ja': '直感で — 即座に',
          'ru': 'По наитию — сразу',
          'pt': 'Pelo instinto — na hora',
          'fr': 'À l\'instinct — immédiatement',
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
          'ja': 'じっくり観察し、分析してから',
          'ru': 'После долгого наблюдения и анализа',
          'pt': 'Após longa observação e análise',
          'fr': 'Après une longue observation et analyse',
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
          'ja': '自分の心と感情に耳を傾ける',
          'ru': 'Слушаю своё сердце и чувства',
          'pt': 'Escuto meu coração e meus sentimentos',
          'fr': 'J\'écoute mon cœur et mes émotions',
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
          'ja': '皆にとって何が最善かを考える',
          'ru': 'Смотрю, что лучше для всех',
          'pt': 'Vejo o que é melhor para todos',
          'fr': 'Je regarde ce qui est le mieux pour tous',
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
      'ja': 'どこに一番住みたい？',
      'ru': 'Где бы ты больше всего хотел жить?',
      'pt': 'Onde você mais gostaria de viver?',
      'fr': 'Où aimerais-tu le plus vivre ?',
      'es': '¿Dónde te gustaría vivir más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'In einer prächtigen Hauptstadt voller Macht und Glanz',
          'en': 'In a grand capital full of power and splendor',
          'ja': '力と栄華に満ちた壮大な都で',
          'ru': 'В великой столице, полной власти и блеска',
          'pt': 'Em uma grande capital cheia de poder e esplendor',
          'fr': 'Dans une grande capitale pleine de pouvoir et de faste',
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
          'ja': '研究と知識にあふれた街で',
          'ru': 'В городе, полном исследований и знаний',
          'pt': 'Em uma cidade cheia de pesquisa e conhecimento',
          'fr': 'Dans une ville pleine de recherche et de savoir',
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
          'ja': '定まった場所はない — いつも新たな地へ旅して',
          'ru': 'Нигде надолго — всегда в пути к новым местам',
          'pt': 'Em lugar nenhum fixo — sempre viajando a novos lugares',
          'fr': 'Nulle part fixe — toujours en voyage vers de nouveaux lieux',
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
          'ja': '最も荒々しい土地で — 火山、嵐、深海',
          'ru': 'В самых диких краях: вулканы, бури, морские глубины',
          'pt':
              'Nas regiões mais selvagens: vulcões, tempestades, mar profundo',
          'fr':
              'Dans les régions les plus sauvages : volcans, tempêtes, abysses',
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
      'ja': 'どんな仕事に満たされる？',
      'ru': 'Какое дело принесло бы тебе удовлетворение?',
      'pt': 'Que tipo de trabalho te realizaria?',
      'fr': 'Quelle tâche te comblerait ?',
      'es': '¿Qué labor te llenaría?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Sturmreiter — mitten im wildesten Geschehen',
          'en': 'Storm Rider — right in the thick of the action',
          'ja': '嵐の乗り手 — 出来事のただ中で',
          'ru': 'Наездник бурь — в самой гуще событий',
          'pt': 'Cavaleiro das tempestades — bem no meio da ação',
          'fr': 'Chevaucheur de tempêtes — au cœur de l\'action',
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
          'ja': '建築家 — 世界を計画し、形づくる',
          'ru': 'Строитель — я планирую и формирую мир',
          'pt': 'Construtor — planejo e moldo o mundo',
          'fr': 'Bâtisseur — je planifie et façonne le monde',
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
          'ja': '鍛冶の名匠 — 永遠に残る物を打ち上げる',
          'ru': 'Мастер-кузнец — я создаю вещи, что служат вечно',
          'pt': 'Mestre ferreiro — forjo coisas que duram para sempre',
          'fr': 'Maître forgeron — je crée des choses qui durent à jamais',
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
          'ja': '癒し手 — 陰で静かに支える',
          'ru': 'Целитель — я тихо помогаю за кулисами',
          'pt': 'Curandeiro — ajudo em silêncio, nos bastidores',
          'fr': 'Guérisseur — j\'aide en silence, en retrait',
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
      'ja': 'あなたには秘密の趣味がある — それは？',
      'ru': 'У тебя есть тайное увлечение — какое?',
      'pt': 'Você tem um passatempo secreto — qual?',
      'fr': 'Tu as un loisir secret — lequel ?',
      'es': 'Tienes un pasatiempo secreto — ¿cuál?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ich schreibe Geschichten über ein ganz normales Leben',
          'en': 'I write stories about a totally normal life',
          'ja': 'ごく普通の暮らしの物語を書く',
          'ru': 'Я пишу истории о совершенно обычной жизни',
          'pt': 'Escrevo histórias sobre uma vida totalmente comum',
          'fr': 'J\'écris des histoires sur une vie tout à fait ordinaire',
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
          'ja': '手作業で小さなミニチュアの世界を作る',
          'ru': 'Я вручную создаю крошечные миниатюрные миры',
          'pt': 'Construo à mão minúsculos mundos em miniatura',
          'fr': 'Je construis à la main de minuscules mondes miniatures',
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
          'ja': 'こっそり植物の世話をする',
          'ru': 'Я тайком ухаживаю за своими растениями',
          'pt': 'Cuido das minhas plantas em segredo',
          'fr': 'Je m\'occupe en secret de mes plantes',
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
          'ja': 'こっそり甘ったるい恋愛小説を読みふける',
          'ru': 'Я тайком проглатываю слащавые любовные романы',
          'pt': 'Devoro escondido romances água-com-açúcar',
          'fr': 'Je dévore en cachette des romans d\'amour à l\'eau de rose',
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
      'ja': '暗い力がすべての竜の存在を脅かしている。あなたはどうする？',
      'ru':
          'Тёмная сила угрожает существованию всех драконов. Что ты сделаешь?',
      'pt':
          'Um poder sombrio ameaça a existência de todos os dragões. O que você faz?',
      'fr':
          'Un pouvoir obscur menace l\'existence de tous les dragons. Que fais-tu ?',
      'es':
          'Un poder oscuro amenaza la existencia de todos los dragones. ¿Qué haces?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de':
              'Ich stelle mich allein dazwischen — und gebe notfalls mein Leben',
          'en': 'I stand in its path alone — and give my life if I must',
          'ja': 'ひとりでその前に立ちはだかる — 必要なら命をも捧げる',
          'ru':
              'Я встаю у неё на пути в одиночку — и отдам жизнь, если придётся',
          'pt':
              'Eu me coloco sozinho em seu caminho — e dou minha vida se preciso',
          'fr':
              'Je me dresse seul sur son chemin — et je donne ma vie s\'il le faut',
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
          'ja': 'すべての竜を束ね、戦いへと導く',
          'ru': 'Я объединяю всех драконов под собой и веду их в бой',
          'pt': 'Uno todos os dragões sob meu comando e os levo à batalha',
          'fr':
              'J\'unis tous les dragons sous mon commandement et les mène au combat',
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
          'ja': '知識と幼き者たちを守り — 必要なら一から築き直す',
          'ru':
              'Я спасаю наши знания и потомство — и отстраиваю заново, если придётся',
          'pt':
              'Salvo nosso conhecimento e nossos filhotes — e reconstruo se preciso',
          'fr':
              'Je sauve notre savoir et nos petits — et je reconstruis s\'il le faut',
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
          'ja': '冷徹な選択をする — 多くを救うため、少数を犠牲にする',
          'ru':
              'Я делаю холодный выбор: пожертвовать немногими, чтобы спасти многих',
          'pt': 'Faço a escolha fria: sacrificar poucos para salvar muitos',
          'fr':
              'Je fais le choix froid : sacrifier quelques-uns pour en sauver beaucoup',
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
          'ja': '誰も手を出さない手段に頼る — どんな代償を払っても',
          'ru':
              'Я прибегаю к средствам, на которые не решится никто другой — любой ценой',
          'pt': 'Recorro a meios que nenhum outro ousa — custe o que custar',
          'fr':
              'Je recours à des moyens que nul autre n\'ose — à n\'importe quel prix',
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
      'ja': 'どんな祭りに最もわくわくする？',
      'ru': 'Какой праздник воодушевил бы тебя больше всего?',
      'pt': 'Que tipo de festa mais te empolgaria?',
      'fr': 'Quel genre de fête t\'enthousiasmerait le plus ?',
      'es': '¿Qué tipo de fiesta te entusiasmaría más?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Ein Gemeinschaftsfest, bei dem alle zusammenkommen',
          'en': 'A community festival where everyone comes together',
          'ja': '皆が集う共同体の祭り',
          'ru': 'Общий праздник, где собираются все вместе',
          'pt': 'Uma festa comunitária onde todos se reúnem',
          'fr': 'Une fête communautaire où tout le monde se rassemble',
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
          'ja': '異なる文化が出会う交易の祭り',
          'ru': 'Торговая ярмарка, где встречаются разные культуры',
          'pt': 'Uma feira comercial onde culturas diferentes se encontram',
          'fr':
              'Une foire commerciale où se rencontrent des cultures étrangères',
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
          'ja': '競い合いと見世物に満ちた大会',
          'ru': 'Состязание, полное соревнований и зрелищ',
          'pt': 'Um torneio cheio de competições e espetáculo',
          'fr': 'Un tournoi plein de compétitions et de spectacle',
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
          'ja': '古の魔法に満ちた厳かな儀式',
          'ru': 'Торжественная церемония, полная древней магии',
          'pt': 'Uma cerimônia solene cheia de magia ancestral',
          'fr': 'Une cérémonie solennelle pleine de magie ancienne',
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
      'ja': '規則や共同体についてどう思う？',
      'ru': 'Как ты относишься к правилам и сообществу?',
      'pt': 'O que você acha de regras e comunidade?',
      'fr': 'Que penses-tu des règles et de la communauté ?',
      'es': '¿Qué opinas de las reglas y la comunidad?',
    },
    answers: [
      QuizAnswer(
        text: {
          'de': 'Regeln bremsen mich — ich folge meiner Natur',
          'en': 'Rules hold me back — I follow my own nature',
          'ja': '規則は窮屈だ — 自分の本性に従う',
          'ru': 'Правила меня сдерживают — я следую своей природе',
          'pt': 'Regras me freiam — sigo minha própria natureza',
          'fr': 'Les règles me freinent — je suis ma propre nature',
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
          'ja': '共有された価値観に従って生きるのが心地よい',
          'ru': 'Мне нравится жить по общим ценностям',
          'pt': 'Gosto de viver segundo valores compartilhados',
          'fr': 'J\'aime vivre selon des valeurs communes',
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
          'ja': 'どちらにも意味がある — 状況に合わせる',
          'ru': 'У обоих есть своё место — я приспосабливаюсь',
          'pt': 'Ambas têm seu lugar — eu me adapto',
          'fr': 'Les deux ont leur place — je m\'adapte',
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
          'ja': 'どちらにもつかない — 従うのは自分の掟だけ',
          'ru': 'Я ни на чьей стороне — лишь по своим правилам',
          'pt': 'Não sigo nenhum lado — apenas minhas próprias regras',
          'fr': 'Je ne suis aucun camp — seulement mes propres règles',
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
