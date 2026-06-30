import '../data/localized_text.dart';
import '../models/dragon_type.dart';

class DragonResult {
  final DragonSubtype subtype;
  final LocalizedText species;
  final LocalizedText name;
  final LocalizedText element;
  final LocalizedText description;
  final LocalizedText rarity;

  const DragonResult({
    required this.subtype,
    required this.species,
    required this.name,
    required this.element,
    required this.description,
    required this.rarity,
  });
}

const Map<DragonSubtype, DragonResult> dragonResults = {
  DragonSubtype.grossdracheSonne: DragonResult(
    subtype: DragonSubtype.grossdracheSonne,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'zh': '巨龙',
      'ja': 'グレートドラゴン',
      'ru': 'Великий дракон',
      'pt': 'Grande Dragão',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Sonnendrache',
      'en': 'Sun Dragon',
      'zh': '太阳龙',
      'ja': '太陽の竜',
      'ru': 'Солнечный дракон',
      'pt': 'Dragão do Sol',
      'fr': 'Dragon du Soleil',
      'es': 'Dragón del Sol',
    },
    element: {
      'de': 'Licht',
      'en': 'Light',
      'zh': '光',
      'ja': '光',
      'ru': 'Свет',
      'pt': 'Luz',
      'fr': 'Lumière',
      'es': 'Luz',
    },
    description: {
      'de':
          'Du bist einer der seltensten Großdrachen überhaupt — ein Sonnendrache. Deine goldenen und roten Schuppen brechen das Licht wie ein Prisma. Du bist gütig, charismatisch und strahlst eine Wärme aus, die andere anzieht. Konflikte löst du mit Diplomatie, nicht mit Gewalt. Deine Größte Stärke: Du bringst Licht auch in die dunkelsten Momente.',
      'en':
          'You are one of the rarest Great Dragons — a Sun Dragon. Your golden and red scales break light like a prism. You are kind, charismatic, and radiate a warmth that draws others to you. You resolve conflicts with diplomacy, not force. Your greatest strength: you bring light even into the darkest moments.',
      'zh':
          '你是世间最稀有的巨龙之一——太阳龙。你那金色与红色的鳞片像棱镜般折射光芒。你善良、富有魅力，散发着吸引他人的温暖。你以外交而非武力化解冲突。你最大的力量：即使在最黑暗的时刻，你也能带来光明。',
      'ja':
          'あなたは存在するなかでも特に稀少なグレートドラゴンのひとつ — 太陽の竜だ。金と赤の鱗はプリズムのように光を分かつ。優しく、カリスマにあふれ、人を惹きつける温かさを放っている。争いは力ではなく対話で解決する。あなたの最大の強み — 最も暗い瞬間にさえ光をもたらすこと。',
      'ru':
          'Ты — один из редчайших Великих драконов: Солнечный дракон. Твоя золотая и красная чешуя преломляет свет, словно призма. Ты добр, харизматичен и излучаешь тепло, что притягивает других. Конфликты ты решаешь дипломатией, а не силой. Твоя величайшая сила: ты несёшь свет даже в самые тёмные мгновения.',
      'pt':
          'Você é um dos Grandes Dragões mais raros que existem: um Dragão do Sol. Suas escamas douradas e vermelhas decompõem a luz como um prisma. Você é bondoso, carismático e irradia um calor que atrai os outros. Resolve os conflitos com diplomacia, não com força. Sua maior força: você leva luz até aos momentos mais sombrios.',
      'fr':
          'Tu es l\'un des Grands Dragons les plus rares qui soient — un Dragon du Soleil. Tes écailles dorées et rouges décomposent la lumière comme un prisme. Tu es bienveillant, charismatique et tu rayonnes une chaleur qui attire les autres. Tu règles les conflits par la diplomatie, non par la force. Ta plus grande force : tu apportes la lumière jusque dans les moments les plus sombres.',
      'es':
          'Eres uno de los Grandes Dragones más raros que existen: un Dragón del Sol. Tus escamas doradas y rojas descomponen la luz como un prisma. Eres bondadoso, carismático e irradias una calidez que atrae a los demás. Resuelves los conflictos con diplomacia, no con la fuerza. Tu mayor fortaleza: llevas luz incluso a los momentos más oscuros.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.grossdracheErde: DragonResult(
    subtype: DragonSubtype.grossdracheErde,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'zh': '巨龙',
      'ja': 'グレートドラゴン',
      'ru': 'Великий дракон',
      'pt': 'Grande Dragão',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Erddrache',
      'en': 'Earth Dragon',
      'zh': '大地龙',
      'ja': '大地の竜',
      'ru': 'Земляной дракон',
      'pt': 'Dragão da Terra',
      'fr': 'Dragon de la Terre',
      'es': 'Dragón de la Tierra',
    },
    element: {
      'de': 'Erde',
      'en': 'Earth',
      'zh': '大地',
      'ja': '地',
      'ru': 'Земля',
      'pt': 'Terra',
      'fr': 'Terre',
      'es': 'Tierra',
    },
    description: {
      'de':
          'Deine panzerartigen Schuppen in tiefen Braun- und Grautönen wirken wie lebendiger Stein. Du bist der Fels in der Brandung — diszipliniert, taktisch und unerschütterlich. Deine Familie und deine Gemeinschaft sind dir heilig. Du planst vor dem Handeln und deine Entschlossenheit macht dich zu einem natürlichen Beschützer.',
      'en':
          'Your armor-like scales in deep brown and gray tones look like living stone. You are the rock in the storm — disciplined, tactical, and unshakeable. Your family and community are sacred to you. You plan before acting, and your resolve makes you a natural protector.',
      'zh':
          '你那如铠甲般、呈深棕与灰色调的鳞片，宛如活着的岩石。你是风暴中的磐石——自律、善于谋略、坚不可摧。家人与族群于你而言神圣不可侵犯。你三思而后行，而你的决心使你成为天生的守护者。',
      'ja':
          '深い茶と灰の色合いの、鎧のような鱗は、まるで生きた岩のよう。あなたは嵐の中の岩 — 規律正しく、戦略的で、揺るがない。家族と仲間はあなたにとって神聖なもの。動く前に計画を練り、その決意があなたを生まれながらの守護者にしている。',
      'ru':
          'Твоя похожая на броню чешуя в глубоких коричневых и серых тонах выглядит как живой камень. Ты — скала среди бури: дисциплинированный, тактичный и непоколебимый. Твоя семья и сообщество для тебя священны. Ты обдумываешь, прежде чем действовать, и твоя решимость делает тебя прирождённым защитником.',
      'pt':
          'Suas escamas, como uma armadura em tons profundos de marrom e cinza, parecem pedra viva. Você é a rocha em meio à tempestade: disciplinado, tático e inabalável. Sua família e sua comunidade são sagradas para você. Você planeja antes de agir, e sua determinação faz de você um protetor nato.',
      'fr':
          'Tes écailles, telle une armure aux tons bruns et gris profonds, ressemblent à de la pierre vivante. Tu es le roc dans la tempête — discipliné, tactique et inébranlable. Ta famille et ta communauté te sont sacrées. Tu réfléchis avant d\'agir, et ta détermination fait de toi un protecteur né.',
      'es':
          'Tus escamas, como una armadura en tonos marrones y grises profundos, parecen piedra viva. Eres la roca en medio de la tormenta: disciplinado, táctico e inquebrantable. Tu familia y tu comunidad son sagradas para ti. Planificas antes de actuar, y tu determinación te convierte en un protector nato.',
    },
    rarity: {
      'de': 'Häufig',
      'en': 'Common',
      'zh': '常见',
      'ja': '一般的',
      'ru': 'Обычный',
      'pt': 'Comum',
      'fr': 'Commun',
      'es': 'Común',
    },
  ),

  DragonSubtype.grossdracheGezeitenTraum: DragonResult(
    subtype: DragonSubtype.grossdracheGezeitenTraum,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'zh': '巨龙',
      'ja': 'グレートドラゴン',
      'ru': 'Великий дракон',
      'pt': 'Grande Dragão',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Gezeiten- & Traumdrache',
      'en': 'Tide & Dream Dragon',
      'zh': '潮汐与梦境之龙',
      'ja': '潮と夢の竜',
      'ru': 'Дракон приливов и снов',
      'pt': 'Dragão das Marés e dos Sonhos',
      'fr': 'Dragon des Marées et des Rêves',
      'es': 'Dragón de Mareas y Sueños',
    },
    element: {
      'de': 'Gezeiten & Traum',
      'en': 'Tides & Dream',
      'zh': '潮汐与梦境',
      'ja': '潮と夢',
      'ru': 'Приливы и Сон',
      'pt': 'Marés e Sonho',
      'fr': 'Marées et Rêve',
      'es': 'Mareas y Sueño',
    },
    description: {
      'de':
          'Deine Schuppen schimmern in Blau und Lila, deine Flügel wirken wie aus Nebel geformt. Du besitzt eine Tiefe, die andere kaum ahnen. Träume und Geheimnisse sind dein Element — du spürst, was andere fühlen, bevor sie es selbst wissen. Weise, ruhig und mit einem Sinn für das Unsichtbare bist du eine Brücke zwischen zwei Welten.',
      'en':
          'Your scales shimmer in blue and purple, your wings seem formed from mist. You possess a depth others rarely suspect. Dreams and secrets are your element — you sense what others feel before they know it themselves. Wise, calm, and attuned to the invisible, you are a bridge between two worlds.',
      'zh':
          '你的鳞片闪烁着蓝与紫，双翼仿佛由迷雾凝成。你拥有他人难以察觉的深度。梦境与秘密是你的领域——在他人尚未自觉之前，你便已感知到他们的情绪。睿智、沉静、与无形之物相通的你，是连接两个世界的桥梁。',
      'ja':
          '鱗は青と紫にきらめき、翼は霧から形づくられたかのよう。あなたには、他の者がほとんど気づかない深さがある。夢と秘密はあなたの領分 — 他者が自覚するより先に、その気持ちを感じ取る。賢く、穏やかで、目に見えぬものと調和したあなたは、二つの世界を結ぶ架け橋だ。',
      'ru':
          'Твоя чешуя мерцает синим и фиолетовым, а крылья будто сотканы из тумана. В тебе есть глубина, о которой мало кто догадывается. Сны и тайны — твоя стихия: ты чувствуешь то, что ощущают другие, прежде чем они сами это осознают. Мудрый, спокойный и созвучный незримому, ты — мост между двумя мирами.',
      'pt':
          'Suas escamas reluzem em azul e roxo, e suas asas parecem feitas de névoa. Você possui uma profundidade que poucos imaginam. Sonhos e segredos são o seu elemento: você sente o que os outros sentem antes mesmo que eles saibam. Sábio, sereno e em sintonia com o invisível, você é uma ponte entre dois mundos.',
      'fr':
          'Tes écailles chatoient de bleu et de violet, et tes ailes semblent faites de brume. Tu possèdes une profondeur que peu soupçonnent. Les rêves et les secrets sont ton élément — tu ressens ce que les autres éprouvent avant même qu\'ils ne le sachent. Sage, calme et accordé à l\'invisible, tu es un pont entre deux mondes.',
      'es':
          'Tus escamas brillan en azul y púrpura, y tus alas parecen formadas de niebla. Posees una profundidad que pocos sospechan. Los sueños y los secretos son tu elemento: percibes lo que otros sienten antes de que ellos mismos lo sepan. Sabio, sereno y en sintonía con lo invisible, eres un puente entre dos mundos.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.grossdracheWind: DragonResult(
    subtype: DragonSubtype.grossdracheWind,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'zh': '巨龙',
      'ja': 'グレートドラゴン',
      'ru': 'Великий дракон',
      'pt': 'Grande Dragão',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Wind- & Luftdrache',
      'en': 'Wind & Air Dragon',
      'zh': '风与气之龙',
      'ja': '風と大気の竜',
      'ru': 'Дракон ветра и воздуха',
      'pt': 'Dragão do Vento e do Ar',
      'fr': 'Dragon du Vent et de l\'Air',
      'es': 'Dragón de Viento y Aire',
    },
    element: {
      'de': 'Wind & Luft',
      'en': 'Wind & Air',
      'zh': '风与气',
      'ja': '風と大気',
      'ru': 'Ветер и Воздух',
      'pt': 'Vento e Ar',
      'fr': 'Vent et Air',
      'es': 'Viento y Aire',
    },
    description: {
      'de':
          'Deine leichte Knochenstruktur und aerodynamisch geformten Hörner sind für Geschwindigkeit gemacht. Du bist frei, impulsiv und liebst es, die Grenzen auszuloten. Kein Ort hält dich lange — du bist immer auf der Suche nach dem nächsten Horizont. Dein Lachen ist ansteckend und deine Energie grenzenlos.',
      'en':
          'Your light bone structure and aerodynamically shaped horns are made for speed. You are free, impulsive, and love pushing limits. No place holds you for long — you are always searching for the next horizon. Your laughter is contagious and your energy boundless.',
      'zh':
          '你轻盈的骨骼结构与符合空气动力学的犄角，是为速度而生。你自由、冲动，热爱挑战极限。没有哪个地方能将你久留——你总在追寻下一片地平线。你的笑声极具感染力，精力无穷无尽。',
      'ja':
          '軽い骨格と、空力を意識した形の角は、速さのために生まれた。自由で衝動的、限界を試すのが大好きだ。どんな場所もあなたを長くは留めない — いつも次の地平を探している。あなたの笑いは伝染し、エネルギーは尽きることがない。',
      'ru':
          'Твоя лёгкая костная структура и аэродинамичные рога созданы для скорости. Ты свободен, импульсивен и любишь испытывать пределы. Ни одно место не удерживает тебя надолго — ты всегда в поисках нового горизонта. Твой смех заразителен, а энергия безгранична.',
      'pt':
          'Sua estrutura óssea leve e seus chifres de formato aerodinâmico são feitos para a velocidade. Você é livre, impulsivo e adora testar os limites. Nenhum lugar te prende por muito tempo: você está sempre em busca do próximo horizonte. Seu riso é contagiante e sua energia não tem fim.',
      'fr':
          'Ta structure osseuse légère et tes cornes au profil aérodynamique sont faites pour la vitesse. Tu es libre, impulsif et tu adores repousser les limites. Aucun lieu ne te retient longtemps — tu cherches toujours le prochain horizon. Ton rire est contagieux et ton énergie sans limites.',
      'es':
          'Tu ligera estructura ósea y tus cuernos de forma aerodinámica están hechos para la velocidad. Eres libre, impulsivo y te encanta poner a prueba los límites. Ningún lugar te retiene mucho tiempo: siempre buscas el próximo horizonte. Tu risa es contagiosa y tu energía no tiene fin.',
    },
    rarity: {
      'de': 'Häufig',
      'en': 'Common',
      'zh': '常见',
      'ja': '一般的',
      'ru': 'Обычный',
      'pt': 'Comum',
      'fr': 'Commun',
      'es': 'Común',
    },
  ),

  DragonSubtype.grossdracheKristall: DragonResult(
    subtype: DragonSubtype.grossdracheKristall,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'zh': '巨龙',
      'ja': 'グレートドラゴン',
      'ru': 'Великий дракон',
      'pt': 'Grande Dragão',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Kristalldrache',
      'en': 'Crystal Dragon',
      'zh': '水晶龙',
      'ja': '結晶の竜',
      'ru': 'Кристальный дракон',
      'pt': 'Dragão de Cristal',
      'fr': 'Dragon de Cristal',
      'es': 'Dragón de Cristal',
    },
    element: {
      'de': 'Kristall',
      'en': 'Crystal',
      'zh': '水晶',
      'ja': '結晶',
      'ru': 'Кристалл',
      'pt': 'Cristal',
      'fr': 'Cristal',
      'es': 'Cristal',
    },
    description: {
      'de':
          'Deine Schuppen bestehen aus organischen Edelsteinen — sie brechen das Licht und sind extrem hart. Du bist großzügig, weise und besitzt einen Sinn für Schönheit und Ordnung. Die Dinge, die du erschaffst, halten Generationen. Dein Zuhause ist prächtig, dein Geist klar wie ein geschliffener Diamant.',
      'en':
          'Your scales are made of organic gemstones — they refract light and are extremely hard. You are generous, wise, and have a sense of beauty and order. The things you create last for generations. Your home is magnificent, your mind clear as a cut diamond.',
      'zh':
          '你的鳞片由有机的宝石构成——能折射光线，且坚硬无比。你慷慨、睿智，拥有对美与秩序的鉴赏力。你所创造之物可流传数代。你的居所富丽堂皇，心智澄澈如经过切割的钻石。',
      'ja':
          '鱗は生きた宝石でできていて — 光を屈折させ、極めて硬い。寛大で賢く、美と秩序の感覚を備えている。あなたが創るものは何世代も残る。住まいは壮麗で、心は磨かれたダイヤモンドのように澄んでいる。',
      'ru':
          'Твоя чешуя состоит из живых самоцветов — она преломляет свет и невероятно прочна. Ты щедр, мудр и обладаешь чувством красоты и порядка. То, что ты создаёшь, живёт поколениями. Твой дом великолепен, а разум ясен, как огранённый алмаз.',
      'pt':
          'Suas escamas são feitas de gemas orgânicas: elas refratam a luz e são extremamente duras. Você é generoso, sábio e tem senso de beleza e ordem. O que você cria dura por gerações. Seu lar é magnífico, sua mente clara como um diamante lapidado.',
      'fr':
          'Tes écailles sont faites de gemmes organiques — elles réfractent la lumière et sont extrêmement dures. Tu es généreux, sage, et tu as le sens de la beauté et de l\'ordre. Ce que tu crées dure des générations. Ta demeure est magnifique, ton esprit clair comme un diamant taillé.',
      'es':
          'Tus escamas están hechas de gemas orgánicas: refractan la luz y son extremadamente duras. Eres generoso, sabio y tienes sentido de la belleza y el orden. Lo que creas perdura durante generaciones. Tu hogar es magnífico y tu mente, clara como un diamante tallado.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.grossdracheFeuer: DragonResult(
    subtype: DragonSubtype.grossdracheFeuer,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'zh': '巨龙',
      'ja': 'グレートドラゴン',
      'ru': 'Великий дракон',
      'pt': 'Grande Dragão',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Feuerdrache',
      'en': 'Fire Dragon',
      'zh': '火龙',
      'ja': '炎の竜',
      'ru': 'Огненный дракон',
      'pt': 'Dragão de Fogo',
      'fr': 'Dragon de Feu',
      'es': 'Dragón de Fuego',
    },
    element: {
      'de': 'Feuer',
      'en': 'Fire',
      'zh': '火',
      'ja': '炎',
      'ru': 'Огонь',
      'pt': 'Fogo',
      'fr': 'Feu',
      'es': 'Fuego',
    },
    description: {
      'de':
          'Deine roten Schuppen glühen wie Kohlen. Du bist leidenschaftlich, direkt und brennst für das, woran du glaubst. Manchmal zu impulsiv, immer authentisch — du versteckst dich nie hinter Masken. Dein Feuer wärmt die, die dir nahestehen, und schützt sie vor allem, was ihnen schadet.',
      'en':
          'Your red scales glow like embers. You are passionate, direct, and burn for what you believe in. Sometimes too impulsive, always authentic — you never hide behind masks. Your fire warms those close to you and protects them from everything that might harm them.',
      'zh':
          '你那红色的鳞片像炭火般灼灼发光。你热情、直率，为信念而燃烧。有时过于冲动，却始终真实——你从不躲在面具之后。你的火焰温暖着身边亲近之人，护他们免受一切伤害。',
      'ja':
          '赤い鱗は熾火のように輝く。情熱的でまっすぐ、信じるもののために燃える。時に衝動的すぎるが、いつも本物 — 仮面の陰に隠れることはない。あなたの炎は近しい者を温め、害を及ぼすものから守る。',
      'ru':
          'Твоя красная чешуя пылает, как угли. Ты страстен, прям и горишь за то, во что веришь. Порой слишком импульсивный, всегда искренний — ты никогда не прячешься за масками. Твой огонь согревает близких и защищает их от всего, что может навредить.',
      'pt':
          'Suas escamas vermelhas brilham como brasas. Você é apaixonado, direto e arde por aquilo em que acredita. Às vezes impulsivo demais, sempre autêntico: você nunca se esconde atrás de máscaras. Seu fogo aquece quem está perto de você e os protege de tudo o que possa feri-los.',
      'fr':
          'Tes écailles rouges rougeoient comme des braises. Tu es passionné, direct, et tu brûles pour ce en quoi tu crois. Parfois trop impulsif, toujours authentique — tu ne te caches jamais derrière des masques. Ton feu réchauffe ceux qui te sont proches et les protège de tout ce qui pourrait leur nuire.',
      'es':
          'Tus escamas rojas brillan como brasas. Eres apasionado, directo y ardes por aquello en lo que crees. A veces demasiado impulsivo, siempre auténtico: nunca te escondes tras máscaras. Tu fuego da calor a quienes te rodean y los protege de todo lo que pueda dañarlos.',
    },
    rarity: {
      'de': 'Häufig',
      'en': 'Common',
      'zh': '常见',
      'ja': '一般的',
      'ru': 'Обычный',
      'pt': 'Comum',
      'fr': 'Commun',
      'es': 'Común',
    },
  ),

  DragonSubtype.lungFeuer: DragonResult(
    subtype: DragonSubtype.lungFeuer,
    species: {
      'de': 'Lung-Drache',
      'en': 'Lung Dragon',
      'zh': '东方龙',
      'ja': 'ルンドラゴン',
      'ru': 'Дракон Лун',
      'pt': 'Dragão Lung',
      'fr': 'Dragon Lung',
      'es': 'Dragón Lung',
    },
    name: {
      'de': 'Feuer-Lung',
      'en': 'Fire Lung',
      'zh': '炎之东方龙',
      'ja': '炎のルン',
      'ru': 'Огненный Лун',
      'pt': 'Lung de Fogo',
      'fr': 'Lung de Feu',
      'es': 'Lung de Fuego',
    },
    element: {
      'de': 'Feuer',
      'en': 'Fire',
      'zh': '火',
      'ja': '炎',
      'ru': 'Огонь',
      'pt': 'Fogo',
      'fr': 'Feu',
      'es': 'Fuego',
    },
    description: {
      'de':
          'Flügellos, schlangenartig, schwebend durch reine Magie — du bist ein Lung-Drache. Deine langen Bartfäden und deine Mähne entlang der Wirbelsäule machen dich unverwechselbar. Als Feuer-Lung bist du streng und mächtig, aber tief im Inneren liegt eine Wärme, die du nur deinen Liebsten zeigst. Lung-Drachen sind extrem selten.',
      'en':
          'Wingless, serpentine, hovering through pure magic — you are a Lung Dragon. Your long whiskers and mane along your spine make you unmistakable. As a Fire Lung, you are stern and powerful, but deep inside lies a warmth you only show to your closest. Lung Dragons are extremely rare.',
      'zh':
          '无翼、蜿蜒如蛇、凭纯粹的魔力悬浮——你是一条东方龙。你那长长的须与脊背上的鬃毛，让你与众不同、无可辨错。作为炎之东方龙，你严厉而强大，但内心深处藏着一份只对至亲展露的温暖。东方龙极为稀有。',
      'ja':
          '翼を持たず、蛇のようにしなやかで、純粋な魔力で宙を漂う — あなたはルンドラゴンだ。長いひげと背筋に沿ったたてがみが、あなたを他の誰とも見分けがつかなくしている。炎のルンとして厳しく力強いが、奥底には、最も近しい者にしか見せない温かさが宿っている。ルンドラゴンは極めて稀少だ。',
      'ru':
          'Бескрылый, змееподобный, парящий благодаря чистой магии — ты Дракон Лун. Твои длинные усы и грива вдоль хребта делают тебя ни с кем не спутать. Как Огненный Лун, ты суров и могуществен, но в глубине таится тепло, которое ты показываешь лишь самым близким. Драконы Лун чрезвычайно редки.',
      'pt':
          'Sem asas, serpentino, flutuando por pura magia: você é um Dragão Lung. Seus longos bigodes e a juba ao longo da espinha tornam você inconfundível. Como Lung de Fogo, você é severo e poderoso, mas no fundo guarda um calor que só mostra aos mais próximos. Os Dragões Lung são extremamente raros.',
      'fr':
          'Sans ailes, serpentin, flottant grâce à la pure magie — tu es un Dragon Lung. Tes longues moustaches et la crinière le long de ton échine te rendent reconnaissable entre tous. En tant que Lung de Feu, tu es sévère et puissant, mais au plus profond se cache une chaleur que tu ne montres qu\'aux tiens. Les Dragons Lung sont extrêmement rares.',
      'es':
          'Sin alas, serpentino, flotando gracias a pura magia: eres un Dragón Lung. Tus largos bigotes y la melena a lo largo de tu columna te hacen inconfundible. Como Lung de Fuego, eres severo y poderoso, pero en lo más hondo guardas una calidez que solo muestras a los tuyos. Los Dragones Lung son extremadamente raros.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.lungLicht: DragonResult(
    subtype: DragonSubtype.lungLicht,
    species: {
      'de': 'Lung-Drache',
      'en': 'Lung Dragon',
      'zh': '东方龙',
      'ja': 'ルンドラゴン',
      'ru': 'Дракон Лун',
      'pt': 'Dragão Lung',
      'fr': 'Dragon Lung',
      'es': 'Dragón Lung',
    },
    name: {
      'de': 'Licht-Lung',
      'en': 'Light Lung',
      'zh': '光之东方龙',
      'ja': '光のルン',
      'ru': 'Световой Лун',
      'pt': 'Lung de Luz',
      'fr': 'Lung de Lumière',
      'es': 'Lung de Luz',
    },
    element: {
      'de': 'Licht',
      'en': 'Light',
      'zh': '光',
      'ja': '光',
      'ru': 'Свет',
      'pt': 'Luz',
      'fr': 'Lumière',
      'es': 'Luz',
    },
    description: {
      'de':
          'Ein goldener, flügelloser Drache, der durch die Luft schwebt wie durch Wasser. Dein Licht ist nicht aggressiv — es ist rein, heilend, hoffnungsvoll. Du hast eine natürliche Verbindung zu anderen Lebewesen und deine Präsenz allein kann eine verdunkelte Stimmung erhellen. Du bist selten — und kostbar.',
      'en':
          'A golden, wingless dragon that glides through the air like water. Your light is not aggressive — it is pure, healing, hopeful. You have a natural connection to other living beings, and your presence alone can brighten a darkened mood. You are rare — and precious.',
      'zh':
          '一条金色的无翼之龙，如在水中般滑行于空中。你的光并不具攻击性——它纯净、治愈、充满希望。你与其他生灵有着天然的联系，仅是你的存在，便能照亮一片阴郁的心境。你稀有——且珍贵。',
      'ja':
          '水の中を進むように空を滑る、金色の翼なき竜。あなたの光は攻撃的ではなく — 純粋で、癒しに満ち、希望に満ちている。他の生き物との自然なつながりを持ち、ただそこにいるだけで、沈んだ気分を明るく照らせる。あなたは稀少で — そして貴い。',
      'ru':
          'Золотой бескрылый дракон, скользящий по воздуху, как по воде. Твой свет не агрессивен — он чист, целителен, полон надежды. У тебя природная связь с другими живыми существами, и одно твоё присутствие способно озарить помрачневшее настроение. Ты редок — и драгоценен.',
      'pt':
          'Um dragão dourado e sem asas que desliza pelo ar como pela água. Sua luz não é agressiva: é pura, curadora, cheia de esperança. Você tem uma conexão natural com os outros seres vivos, e só a sua presença pode iluminar um ânimo sombrio. Você é raro — e precioso.',
      'fr':
          'Un dragon doré et sans ailes qui glisse dans l\'air comme dans l\'eau. Ta lumière n\'est pas agressive — elle est pure, guérisseuse, pleine d\'espoir. Tu as un lien naturel avec les autres êtres vivants, et ta seule présence peut éclairer une humeur assombrie. Tu es rare — et précieux.',
      'es':
          'Un dragón dorado y sin alas que se desliza por el aire como por el agua. Tu luz no es agresiva: es pura, sanadora, esperanzadora. Tienes una conexión natural con los demás seres vivos, y tu sola presencia puede iluminar un ánimo sombrío. Eres raro — y valioso.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.lungFeuerLicht: DragonResult(
    subtype: DragonSubtype.lungFeuerLicht,
    species: {
      'de': 'Lung-Drache',
      'en': 'Lung Dragon',
      'zh': '东方龙',
      'ja': 'ルンドラゴン',
      'ru': 'Дракон Лун',
      'pt': 'Dragão Lung',
      'fr': 'Dragon Lung',
      'es': 'Dragón Lung',
    },
    name: {
      'de': 'Feuer- & Licht-Lung',
      'en': 'Fire & Light Lung',
      'zh': '炎光东方龙',
      'ja': '炎と光のルン',
      'ru': 'Лун огня и света',
      'pt': 'Lung de Fogo e Luz',
      'fr': 'Lung de Feu et de Lumière',
      'es': 'Lung de Fuego y Luz',
    },
    element: {
      'de': 'Feuer & Licht',
      'en': 'Fire & Light',
      'zh': '火与光',
      'ja': '炎と光',
      'ru': 'Огонь и Свет',
      'pt': 'Fogo e Luz',
      'fr': 'Feu et Lumière',
      'es': 'Fuego y Luz',
    },
    description: {
      'de':
          'Du trägst zwei Elemente in dir — Feuer und Licht. Das macht dich zu einem der mächtigsten und seltensten Wesen Draconias. Du bist mutig bis zur Eigensinnigkeit, neugierig ohne Grenzen, und wenn du handelst, verändert sich die Welt um dich herum. Dein Funke ist ansteckend.',
      'en':
          'You carry two elements within you — fire and light. This makes you one of the most powerful and rarest beings in Draconia. You are brave to the point of stubbornness, endlessly curious, and when you act, the world around you changes. Your spark is contagious.',
      'zh':
          '你的体内蕴含着两种元素——火与光。这使你成为德拉科尼亚最强大、最稀有的存在之一。你勇敢得近乎固执，好奇心永无止境，而当你行动时，周遭的世界为之改变。你的火花极具感染力。',
      'ja':
          'あなたは二つの属性を内に宿している — 炎と光だ。それがあなたをドラコニアでも有数の、最も力強く稀少な存在にしている。頑固なまでに勇敢で、限りなく好奇心旺盛。あなたが動けば、周りの世界が変わる。あなたの火花は伝染する。',
      'ru':
          'Ты несёшь в себе две стихии — огонь и свет. Это делает тебя одним из самых могущественных и редких существ Драконии. Ты храбр до упрямства, бесконечно любопытен, и когда ты действуешь, мир вокруг меняется. Твоя искра заразительна.',
      'pt':
          'Você carrega dois elementos dentro de si: fogo e luz. Isso faz de você um dos seres mais poderosos e raros de Draconia. Você é corajoso a ponto da teimosia, infinitamente curioso, e quando age, o mundo ao seu redor muda. Sua faísca é contagiante.',
      'fr':
          'Tu portes deux éléments en toi — le feu et la lumière. Cela fait de toi l\'un des êtres les plus puissants et les plus rares de Draconia. Tu es courageux jusqu\'à l\'entêtement, infiniment curieux, et quand tu agis, le monde autour de toi change. Ton étincelle est contagieuse.',
      'es':
          'Llevas dos elementos en tu interior: fuego y luz. Eso te convierte en uno de los seres más poderosos y raros de Draconia. Eres valiente hasta la obstinación, infinitamente curioso, y cuando actúas, el mundo a tu alrededor cambia. Tu chispa es contagiosa.',
    },
    rarity: {
      'de': 'Legendär',
      'en': 'Legendary',
      'zh': '传说',
      'ja': '伝説級',
      'ru': 'Легендарный',
      'pt': 'Lendário',
      'fr': 'Légendaire',
      'es': 'Legendario',
    },
  ),

  DragonSubtype.wyvernSturm: DragonResult(
    subtype: DragonSubtype.wyvernSturm,
    species: {
      'de': 'Wyvern',
      'en': 'Wyvern',
      'zh': '翼龙',
      'ja': 'ワイバーン',
      'ru': 'Виверна',
      'pt': 'Wyvern',
      'fr': 'Wyverne',
      'es': 'Wyvern',
    },
    name: {
      'de': 'Sturm-Wyvern',
      'en': 'Storm Wyvern',
      'zh': '风暴翼龙',
      'ja': '嵐のワイバーン',
      'ru': 'Грозовая виверна',
      'pt': 'Wyvern da Tempestade',
      'fr': 'Wyverne des Tempêtes',
      'es': 'Wyvern de Tormenta',
    },
    element: {
      'de': 'Sturm & Wind',
      'en': 'Storm & Wind',
      'zh': '风暴与狂风',
      'ja': '嵐と風',
      'ru': 'Буря и Ветер',
      'pt': 'Tempestade e Vento',
      'fr': 'Tempête et Vent',
      'es': 'Tormenta y Viento',
    },
    description: {
      'de':
          'Deine sichelförmigen Flügel schneiden durch die Luft wie Klingen. Kein anderes Lebewesen ist in der Luft schneller als du. Du lebst für den Moment, für den Nervenkitzel, für die Wildheit des Sturms. Wyvern haben keine Vorderbeine — ihre Flügel sind ihre Arme, und du weißt genau, wie du sie einsetzt.',
      'en':
          'Your sickle-shaped wings cut through the air like blades. No other creature is faster in the sky than you. You live for the moment, for the thrill, for the wildness of the storm. Wyverns have no forelegs — their wings are their arms, and you know exactly how to use them.',
      'zh':
          '你那镰刀般的双翼如刀刃般划破长空。天空中没有任何生物比你更快。你为当下而活，为刺激而活，为风暴的狂野而活。翼龙没有前肢——双翼便是它们的双臂，而你深谙运用之道。',
      'ja':
          '鎌のような翼が、刃のごとく空を切り裂く。空ではあなたより速い生き物はいない。瞬間のため、スリルのため、嵐の荒々しさのために生きる。ワイバーンに前脚はない — 翼こそがその腕であり、あなたはその使い方を熟知している。',
      'ru':
          'Твои серповидные крылья рассекают воздух, словно клинки. Ни одно существо не быстрее тебя в небе. Ты живёшь ради мгновения, ради азарта, ради ярости бури. У виверн нет передних лап — их крылья и есть их руки, и ты точно знаешь, как ими пользоваться.',
      'pt':
          'Suas asas em forma de foice cortam o ar como lâminas. Nenhuma outra criatura é mais veloz que você no céu. Você vive para o momento, para a emoção, para a fúria da tempestade. Os wyverns não têm patas dianteiras: suas asas são seus braços, e você sabe exatamente como usá-las.',
      'fr':
          'Tes ailes en forme de faux fendent l\'air comme des lames. Aucune autre créature n\'est plus rapide que toi dans le ciel. Tu vis pour l\'instant, pour le frisson, pour la fureur de la tempête. Les wyvernes n\'ont pas de pattes avant — leurs ailes sont leurs bras, et tu sais exactement comment t\'en servir.',
      'es':
          'Tus alas en forma de hoz cortan el aire como cuchillas. Ninguna otra criatura es más veloz que tú en el cielo. Vives para el momento, para la emoción, para la furia de la tormenta. Los wyvern no tienen patas delanteras: sus alas son sus brazos, y tú sabes exactamente cómo usarlas.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.wyvernFrost: DragonResult(
    subtype: DragonSubtype.wyvernFrost,
    species: {
      'de': 'Wyvern',
      'en': 'Wyvern',
      'zh': '翼龙',
      'ja': 'ワイバーン',
      'ru': 'Виверна',
      'pt': 'Wyvern',
      'fr': 'Wyverne',
      'es': 'Wyvern',
    },
    name: {
      'de': 'Frost-Wyvern',
      'en': 'Frost Wyvern',
      'zh': '寒霜翼龙',
      'ja': '霜のワイバーン',
      'ru': 'Морозная виверна',
      'pt': 'Wyvern da Geada',
      'fr': 'Wyverne du Givre',
      'es': 'Wyvern de Escarcha',
    },
    element: {
      'de': 'Frost & Eis',
      'en': 'Frost & Ice',
      'zh': '霜与冰',
      'ja': '霜と氷',
      'ru': 'Мороз и Лёд',
      'pt': 'Geada e Gelo',
      'fr': 'Givre et Glace',
      'es': 'Escarcha y Hielo',
    },
    description: {
      'de':
          'Deine Flügelmembran ist dick und kältebeständig, an den Gelenken hängen Eiszapfen. Du bist kalt nach außen, aber nicht nach innen — du testest jeden, der dir nahe kommen will. Wer dein Vertrauen gewinnt, hat einen unerschütterlichen Verbündeten. Du handelst überlegt, präzise, unerbittlich.',
      'en':
          'Your wing membrane is thick and cold-resistant, with icicles at the joints. You are cold on the outside, but not on the inside — you test everyone who wants to get close. Whoever earns your trust has an unshakeable ally. You act deliberately, precisely, relentlessly.',
      'zh':
          '你的翼膜厚实而耐寒，关节处垂挂着冰柱。你外表冷漠，内心却并非如此——你会考验每一个想要靠近你的人。赢得你信任的人，便拥有了一位坚定不移的盟友。你行事审慎、精准、毫不留情。',
      'ja':
          '翼の膜は厚く寒さに強く、関節にはつららが垂れている。外は冷たくとも、内は違う — 近づこうとする者を必ず試す。あなたの信頼を勝ち得た者は、揺るがぬ味方を得る。あなたは慎重に、的確に、容赦なく動く。',
      'ru':
          'Перепонка твоих крыльев толстая и устойчивая к холоду, на суставах висят сосульки. Снаружи ты холоден, но не внутри — ты испытываешь каждого, кто хочет сблизиться. Тот, кто заслужит твоё доверие, обретёт непоколебимого союзника. Ты действуешь обдуманно, точно, неумолимо.',
      'pt':
          'A membrana de suas asas é grossa e resistente ao frio, com pingentes de gelo nas articulações. Você é frio por fora, mas não por dentro: põe à prova todo aquele que quer se aproximar. Quem conquista sua confiança tem um aliado inabalável. Você age com cautela, com precisão, sem trégua.',
      'fr':
          'La membrane de tes ailes est épaisse et résistante au froid, avec des glaçons aux articulations. Tu es froid en apparence, mais pas à l\'intérieur — tu mets à l\'épreuve quiconque veut s\'approcher. Qui gagne ta confiance a un allié inébranlable. Tu agis avec réflexion, précision, sans relâche.',
      'es':
          'La membrana de tus alas es gruesa y resistente al frío, con carámbanos en las articulaciones. Eres frío por fuera, pero no por dentro: pones a prueba a todo el que quiere acercarse. Quien se gana tu confianza tiene un aliado inquebrantable. Actúas con cautela, con precisión, sin tregua.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.lindwurmMagma: DragonResult(
    subtype: DragonSubtype.lindwurmMagma,
    species: {
      'de': 'Lindwurm',
      'en': 'Lindworm',
      'zh': '林德龙',
      'ja': 'リンドヴルム',
      'ru': 'Линдворм',
      'pt': 'Lindworm',
      'fr': 'Lindworm',
      'es': 'Lindworm',
    },
    name: {
      'de': 'Magma-Lindwurm',
      'en': 'Magma Lindworm',
      'zh': '岩浆林德龙',
      'ja': 'マグマのリンドヴルム',
      'ru': 'Магмовый линдворм',
      'pt': 'Lindworm de Magma',
      'fr': 'Lindworm de Magma',
      'es': 'Lindworm de Magma',
    },
    element: {
      'de': 'Magma & Feuer',
      'en': 'Magma & Fire',
      'zh': '岩浆与火',
      'ja': 'マグマと炎',
      'ru': 'Магма и Огонь',
      'pt': 'Magma e Fogo',
      'fr': 'Magma et Feu',
      'es': 'Magma y Fuego',
    },
    description: {
      'de':
          'Deine Haut ähnelt glühender Lava und du lebst dort, wo anderen der Boden unter den Füßen zu heiß wird. Lindwürmer haben nur zwei Vorderbeine und einen langen, schlangenartigen Körper. Du bist ein Meisterhandwerker — kein anderer taucht tiefer in das Magmameer als du, und kein anderer schmiedet stärkere Waffen.',
      'en':
          'Your skin resembles glowing lava, and you live where the ground gets too hot for others. Lindworms have only two forelegs and a long, serpentine body. You are a master craftsman — no one dives deeper into the magma sea than you, and no one forges stronger weapons.',
      'zh':
          '你的皮肤宛如炽热的熔岩，你栖息在他人无法忍受其灼热的地方。林德龙只有两条前肢，以及一副细长如蛇的躯体。你是技艺精湛的工匠——没有谁比你潜入岩浆之海更深，也没有谁能锻造出更强的兵器。',
      'ja':
          '肌は灼熱の溶岩のようで、他の者には熱すぎる場所に住んでいる。リンドヴルムには前脚が二本だけ、そして長い蛇のような体がある。あなたは熟練の職人 — マグマの海にあなたより深く潜る者はなく、これより強い武器を鍛える者もいない。',
      'ru':
          'Твоя кожа похожа на раскалённую лаву, и ты живёшь там, где земля становится слишком горячей для других. У линдвормов лишь две передние лапы и длинное змееподобное тело. Ты мастер своего дела — никто не ныряет глубже в море магмы, чем ты, и никто не куёт оружие крепче.',
      'pt':
          'Sua pele lembra lava incandescente, e você vive onde o chão fica quente demais para os outros. Os lindworms têm apenas duas patas dianteiras e um corpo longo e serpentino. Você é um mestre artesão: ninguém mergulha mais fundo no mar de magma do que você, e ninguém forja armas mais fortes.',
      'fr':
          'Ta peau ressemble à de la lave incandescente, et tu vis là où le sol devient trop brûlant pour les autres. Les lindworms n\'ont que deux pattes avant et un long corps serpentin. Tu es un maître artisan — nul ne plonge plus profond dans la mer de magma que toi, et nul ne forge d\'armes plus puissantes.',
      'es':
          'Tu piel se asemeja a la lava incandescente, y vives donde el suelo se vuelve demasiado caliente para los demás. Los lindworm tienen solo dos patas delanteras y un cuerpo largo y serpentino. Eres un maestro artesano: nadie se sumerge más hondo en el mar de magma que tú, y nadie forja armas más fuertes.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.lindwurmSumpf: DragonResult(
    subtype: DragonSubtype.lindwurmSumpf,
    species: {
      'de': 'Lindwurm',
      'en': 'Lindworm',
      'zh': '林德龙',
      'ja': 'リンドヴルム',
      'ru': 'Линдворм',
      'pt': 'Lindworm',
      'fr': 'Lindworm',
      'es': 'Lindworm',
    },
    name: {
      'de': 'Sumpf-Lindwurm',
      'en': 'Swamp Lindworm',
      'zh': '沼泽林德龙',
      'ja': '沼のリンドヴルム',
      'ru': 'Болотный линдворм',
      'pt': 'Lindworm do Pântano',
      'fr': 'Lindworm des Marais',
      'es': 'Lindworm de Pantano',
    },
    element: {
      'de': 'Natur & Erde',
      'en': 'Nature & Earth',
      'zh': '自然与大地',
      'ja': '自然と地',
      'ru': 'Природа и Земля',
      'pt': 'Natureza e Terra',
      'fr': 'Nature et Terre',
      'es': 'Naturaleza y Tierra',
    },
    description: {
      'de':
          'Deine Schuppen tarnen dich perfekt in jedem Wald, jedem Sumpf, jedem Dickicht. Du wirst unterschätzt — und das ist deine größte Waffe. Anpassungsfähig, geduldig und mit einem tiefen Gespür für das Lebendige bist du dort am stärksten, wo andere nicht hinschauen.',
      'en':
          'Your scales perfectly camouflage you in any forest, swamp, or thicket. You are underestimated — and that is your greatest weapon. Adaptable, patient, and with a deep sense for the living world, you are strongest where others are not looking.',
      'zh':
          '你的鳞片让你在任何森林、沼泽或灌木丛中都能完美隐匿。你被人低估——而这正是你最大的武器。你善于适应、富有耐心，对一切生命有着深刻的感知，在无人注视之处最为强大。',
      'ja':
          '鱗はどんな森でも、沼でも、茂みでも、あなたを完璧に隠す。あなたは過小評価される — そしてそれこそが最大の武器だ。柔軟で忍耐強く、生命への深い感覚を持つあなたは、誰も見ていない場所で最も強い。',
      'ru':
          'Твоя чешуя идеально маскирует тебя в любом лесу, болоте или чаще. Тебя недооценивают — и это твоё самое сильное оружие. Гибкий, терпеливый и с глубоким чутьём ко всему живому, ты сильнее всего там, где никто не смотрит.',
      'pt':
          'Suas escamas te camuflam perfeitamente em qualquer floresta, pântano ou matagal. Você é subestimado — e essa é a sua maior arma. Adaptável, paciente e com um senso profundo do que é vivo, você é mais forte onde ninguém está olhando.',
      'fr':
          'Tes écailles te camouflent à la perfection dans n\'importe quelle forêt, marais ou fourré. On te sous-estime — et c\'est là ta plus grande arme. Adaptable, patient et doté d\'un sens profond du vivant, tu es le plus fort là où personne ne regarde.',
      'es':
          'Tus escamas te camuflan a la perfección en cualquier bosque, pantano o maleza. Te subestiman — y esa es tu mayor arma. Adaptable, paciente y con un profundo instinto para todo lo vivo, eres más fuerte allí donde nadie mira.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.amphithereTraum: DragonResult(
    subtype: DragonSubtype.amphithereTraum,
    species: {
      'de': 'Amphithere',
      'en': 'Amphithere',
      'zh': '羽蛇龙',
      'ja': 'アンフィプテレ',
      'ru': 'Амфиптер',
      'pt': 'Anfítero',
      'fr': 'Amphiptère',
      'es': 'Anfítero',
    },
    name: {
      'de': 'Traum-Amphithere',
      'en': 'Dream Amphithere',
      'zh': '梦境羽蛇龙',
      'ja': '夢のアンフィプテレ',
      'ru': 'Амфиптер снов',
      'pt': 'Anfítero dos Sonhos',
      'fr': 'Amphiptère des Rêves',
      'es': 'Anfítero del Sueño',
    },
    element: {
      'de': 'Traum & Nebel',
      'en': 'Dream & Mist',
      'zh': '梦境与迷雾',
      'ja': '夢と霧',
      'ru': 'Сон и Туман',
      'pt': 'Sonho e Névoa',
      'fr': 'Rêve et Brume',
      'es': 'Sueño y Niebla',
    },
    description: {
      'de':
          'Keine Beine — nur ein schlangenartiger Körper und mächtige Federschwingen. Dein Flügelschlag erzeugt Nebel, der Illusionen und Träume hervorruft. Du bist ein Wandler zwischen den Welten — real und unwirklich zugleich. Andere wissen nie ganz, was sie von dir zu erwarten haben, und genau das macht dich faszinierend.',
      'en':
          'No legs — just a serpentine body and magnificent feathered wings. Your wingbeat creates mist that conjures illusions and dreams. You are a walker between worlds — real and unreal at once. Others never quite know what to expect from you, and that is exactly what makes you fascinating.',
      'zh':
          '没有腿——只有蜿蜒如蛇的躯体与华美的羽翼。你的振翅会生成迷雾，唤起幻象与梦境。你是穿行于世界之间的行者——既真实又虚幻。他人永远无法完全猜透你，而这恰恰使你令人着迷。',
      'ja':
          '脚はなく — 蛇のような体と、見事な羽根の翼だけ。あなたの羽ばたきは、幻と夢を呼び起こす霧を生み出す。あなたは世界のあわいを歩む者 — 現実でありながら非現実でもある。他の者はあなたから何が来るのか決して読みきれず、それこそがあなたを魅力的にしている。',
      'ru':
          'Без лап — лишь змееподобное тело и великолепные оперённые крылья. Взмах твоих крыльев создаёт туман, что рождает иллюзии и сны. Ты странник меж мирами — реальный и нереальный одновременно. Другие никогда не знают, чего от тебя ждать, и именно это делает тебя завораживающим.',
      'pt':
          'Sem patas: apenas um corpo serpentino e magníficas asas de penas. Sua batida de asas cria uma névoa que evoca ilusões e sonhos. Você é um andarilho entre mundos — real e irreal ao mesmo tempo. Os outros nunca sabem direito o que esperar de você, e é justamente isso que te torna fascinante.',
      'fr':
          'Pas de pattes — seulement un corps serpentin et de magnifiques ailes de plumes. Ton battement d\'ailes crée une brume qui évoque illusions et rêves. Tu es un marcheur entre les mondes — réel et irréel à la fois. Les autres ne savent jamais vraiment à quoi s\'attendre de ta part, et c\'est précisément ce qui te rend fascinant.',
      'es':
          'Sin patas: solo un cuerpo serpentino y magníficas alas de plumas. Tu aleteo crea una niebla que evoca ilusiones y sueños. Eres un caminante entre mundos — real e irreal a la vez. Los demás nunca saben del todo qué esperar de ti, y eso es justo lo que te hace fascinante.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.amphithereSonne: DragonResult(
    subtype: DragonSubtype.amphithereSonne,
    species: {
      'de': 'Amphithere',
      'en': 'Amphithere',
      'zh': '羽蛇龙',
      'ja': 'アンフィプテレ',
      'ru': 'Амфиптер',
      'pt': 'Anfítero',
      'fr': 'Amphiptère',
      'es': 'Anfítero',
    },
    name: {
      'de': 'Sonnen-Amphithere',
      'en': 'Sun Amphithere',
      'zh': '太阳羽蛇龙',
      'ja': '太陽のアンフィプテレ',
      'ru': 'Солнечный амфиптер',
      'pt': 'Anfítero do Sol',
      'fr': 'Amphiptère du Soleil',
      'es': 'Anfítero del Sol',
    },
    element: {
      'de': 'Licht & Feuer',
      'en': 'Light & Fire',
      'zh': '光与火',
      'ja': '光と炎',
      'ru': 'Свет и Огонь',
      'pt': 'Luz e Fogo',
      'fr': 'Lumière et Feu',
      'es': 'Luz y Fuego',
    },
    description: {
      'de':
          'Deine Federn glühen in goldenem Licht. Bei Gefahr kannst du eine blendende Lichtexplosion auslösen. Du bist warm, charismatisch und strahlend — aber unterschätze deine Stärke nicht. Hinter der Eleganz steckt eine Kraft, die selbst ausgewachsene Großdrachen zur Vorsicht mahnt.',
      'en':
          'Your feathers glow in golden light. In danger, you can unleash a blinding light explosion. You are warm, charismatic, and radiant — but do not underestimate your strength. Behind the elegance is a power that even grown Great Dragons treat with caution.',
      'zh':
          '你的羽毛闪耀着金色的光芒。危急之际，你能爆发出令人目眩的光之爆裂。你温暖、富有魅力、光彩照人——但切莫低估你的力量。优雅之下潜藏着一股力量，连成年的巨龙都对其心存忌惮。',
      'ja':
          '羽根は黄金の光を放つ。危機に際しては、目もくらむ光の爆発を放てる。温かく、カリスマにあふれ、輝いている — だがその力を侮ってはいけない。優雅さの奥には、成熟したグレートドラゴンさえ慎重にさせる力が潜んでいる。',
      'ru':
          'Твои перья сияют золотым светом. В опасности ты можешь обрушить ослепительную вспышку света. Ты тёплый, харизматичный и сияющий — но не недооценивай свою силу. За изяществом скрывается мощь, с которой считаются даже взрослые Великие драконы.',
      'pt':
          'Suas penas brilham com luz dourada. Diante do perigo, você pode desencadear uma cegante explosão de luz. Você é caloroso, carismático e radiante — mas não subestime sua força. Por trás da elegância há um poder que até os Grandes Dragões adultos tratam com cautela.',
      'fr':
          'Tes plumes brillent d\'une lumière dorée. En cas de danger, tu peux déclencher une explosion de lumière aveuglante. Tu es chaleureux, charismatique et rayonnant — mais ne sous-estime pas ta force. Derrière l\'élégance se cache une puissance que même les Grands Dragons adultes traitent avec prudence.',
      'es':
          'Tus plumas brillan con luz dorada. Ante el peligro, puedes desatar una cegadora explosión de luz. Eres cálido, carismático y radiante — pero no subestimes tu fuerza. Tras la elegancia se esconde un poder que incluso los Grandes Dragones adultos tratan con cautela.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.leviathanGezeiten: DragonResult(
    subtype: DragonSubtype.leviathanGezeiten,
    species: {
      'de': 'Leviathan',
      'en': 'Leviathan',
      'zh': '利维坦',
      'ja': 'リヴァイアサン',
      'ru': 'Левиафан',
      'pt': 'Leviatã',
      'fr': 'Léviathan',
      'es': 'Leviatán',
    },
    name: {
      'de': 'Gezeiten-Leviathan',
      'en': 'Tide Leviathan',
      'zh': '潮汐利维坦',
      'ja': '潮のリヴァイアサン',
      'ru': 'Левиафан приливов',
      'pt': 'Leviatã das Marés',
      'fr': 'Léviathan des Marées',
      'es': 'Leviatán de las Mareas',
    },
    element: {
      'de': 'Wasser & Gezeiten',
      'en': 'Water & Tides',
      'zh': '水与潮汐',
      'ja': '水と潮',
      'ru': 'Вода и Приливы',
      'pt': 'Água e Marés',
      'fr': 'Eau et Marées',
      'es': 'Agua y Mareas',
    },
    description: {
      'de':
          'Du beherrschst die Wasserinseln und Wasserwege Draconias. Deine gewaltigen Schwingen funktionieren unter Wasser wie die Flossen eines Mantarochens, und du besitzt feine Kiemenschlitze. Du bist ein Architekt und Navigator — du formst die Welt um dich herum, während andere einfach durch sie hindurchschwimmen.',
      'en':
          'You rule the water islands and waterways of Draconia. Your enormous wings function underwater like manta ray fins, and you possess fine gill slits. You are an architect and navigator — you shape the world around you while others simply swim through it.',
      'zh':
          '你统御着德拉科尼亚的水中岛屿与水道。你那巨大的双翼在水下如蝠鲼的鳍般运作，你还生有细密的鳃裂。你是建筑师，也是航行者——当他人只是游过这个世界时，你却在塑造你周遭的世界。',
      'ja':
          'あなたはドラコニアの水の島々と水路を治めている。巨大な翼は水中でマンタの鰭のように働き、繊細なえらの裂け目も備えている。あなたは建築家であり航海者 — 他の者がただ泳ぎ抜けるだけの世界を、あなたは形づくっていく。',
      'ru':
          'Ты властвуешь над водными островами и водными путями Драконии. Твои огромные крылья работают под водой, как плавники манты, а ещё у тебя есть тонкие жаберные щели. Ты зодчий и навигатор — ты формируешь мир вокруг себя, пока другие просто плывут сквозь него.',
      'pt':
          'Você reina sobre as ilhas de água e as vias aquáticas de Draconia. Suas enormes asas funcionam debaixo d\'água como as nadadeiras de uma arraia-manta, e você possui finas fendas branquiais. Você é um arquiteto e navegador — molda o mundo ao seu redor enquanto os outros simplesmente nadam através dele.',
      'fr':
          'Tu règnes sur les îles d\'eau et les voies navigables de Draconia. Tes ailes immenses fonctionnent sous l\'eau comme les nageoires d\'une raie manta, et tu possèdes de fines fentes branchiales. Tu es un architecte et un navigateur — tu façonnes le monde autour de toi pendant que les autres se contentent de le traverser à la nage.',
      'es':
          'Reinas sobre las islas de agua y las vías acuáticas de Draconia. Tus enormes alas funcionan bajo el agua como las aletas de una mantarraya, y posees finas hendiduras branquiales. Eres arquitecto y navegante: das forma al mundo que te rodea mientras otros simplemente nadan a través de él.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.leviathanMagma: DragonResult(
    subtype: DragonSubtype.leviathanMagma,
    species: {
      'de': 'Leviathan',
      'en': 'Leviathan',
      'zh': '利维坦',
      'ja': 'リヴァイアサン',
      'ru': 'Левиафан',
      'pt': 'Leviatã',
      'fr': 'Léviathan',
      'es': 'Leviatán',
    },
    name: {
      'de': 'Magma-Leviathan',
      'en': 'Magma Leviathan',
      'zh': '岩浆利维坦',
      'ja': 'マグマのリヴァイアサン',
      'ru': 'Магмовый левиафан',
      'pt': 'Leviatã de Magma',
      'fr': 'Léviathan de Magma',
      'es': 'Leviatán de Magma',
    },
    element: {
      'de': 'Magma & Feuer',
      'en': 'Magma & Fire',
      'zh': '岩浆与火',
      'ja': 'マグマと炎',
      'ru': 'Магма и Огонь',
      'pt': 'Magma e Fogo',
      'fr': 'Magma et Feu',
      'es': 'Magma y Fuego',
    },
    description: {
      'de':
          'Du lebst auf den untersten, heißesten Inseln über dem Lavameer — ein Ort, den andere meiden. Deine massiven, obsidianartigen Schuppen sind Panzerung und Identität zugleich. Du bist Draconias unangefochtener Meisterschmied. Deine Arbeit hält ewig. Du selbst auch fast.',
      'en':
          'You live on the lowest, hottest islands above the lava sea — a place others avoid. Your massive, obsidian-like scales are both armor and identity. You are Draconia\'s undisputed master smith. Your work lasts forever. So do you, almost.',
      'zh':
          '你栖居在熔岩之海上方最低、最炽热的岛屿——那是他人避之不及的地方。你那如黑曜石般厚重的鳞片，既是铠甲，也是你本身的写照。你是德拉科尼亚无可争议的铸造大师。你的作品永世长存。你自己，也几乎如此。',
      'ja':
          'あなたは溶岩の海の上、最も低く最も熱い島々に住んでいる — 他の者が避ける場所だ。黒曜石のような巨大な鱗は、鎧であると同時にあなた自身そのもの。あなたはドラコニア随一の鍛冶の名匠。その作品は永遠に残る。あなた自身も — ほとんど永遠に。',
      'ru':
          'Ты живёшь на самых нижних и жарких островах над морем лавы — там, где другие не бывают. Твоя массивная, словно обсидиановая, чешуя — это и броня, и сама твоя суть. Ты бесспорный мастер-кузнец Драконии. Твои творения служат вечно. Ты сам — почти тоже.',
      'pt':
          'Você vive nas ilhas mais baixas e quentes sobre o mar de lava — um lugar que os outros evitam. Suas enormes escamas, como de obsidiana, são ao mesmo tempo armadura e identidade. Você é o incontestável mestre ferreiro de Draconia. Sua obra dura para sempre. Você também, quase.',
      'fr':
          'Tu vis sur les îles les plus basses et les plus chaudes au-dessus de la mer de lave — un endroit que les autres évitent. Tes écailles massives, semblables à de l\'obsidienne, sont à la fois armure et identité. Tu es le maître forgeron incontesté de Draconia. Ton œuvre dure éternellement. Toi aussi, ou presque.',
      'es':
          'Vives en las islas más bajas y calurosas sobre el mar de lava — un lugar que los demás evitan. Tus enormes escamas, como de obsidiana, son a la vez armadura e identidad. Eres el indiscutible maestro herrero de Draconia. Tu obra dura para siempre. Tú también, casi.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.seraphGewitter: DragonResult(
    subtype: DragonSubtype.seraphGewitter,
    species: {
      'de': 'Seraph-Drache',
      'en': 'Seraph Dragon',
      'zh': '炽天龙',
      'ja': 'セラフドラゴン',
      'ru': 'Дракон-серафим',
      'pt': 'Dragão Serafim',
      'fr': 'Dragon Séraphin',
      'es': 'Dragón Serafín',
    },
    name: {
      'de': 'Gewitter-Seraph',
      'en': 'Storm Seraph',
      'zh': '风暴炽天龙',
      'ja': '嵐のセラフ',
      'ru': 'Грозовой серафим',
      'pt': 'Serafim da Tempestade',
      'fr': 'Séraphin des Tempêtes',
      'es': 'Serafín de Tormenta',
    },
    element: {
      'de': 'Blitz & Donner',
      'en': 'Lightning & Thunder',
      'zh': '闪电与雷霆',
      'ja': '稲妻と雷',
      'ru': 'Молния и Гром',
      'pt': 'Raio e Trovão',
      'fr': 'Foudre et Tonnerre',
      'es': 'Rayo y Trueno',
    },
    description: {
      'de':
          'Vier bis sechs schmale Flügel übereinander — du manövrierst selbst durch wildeste Orkane. Du bist wild, dynamisch und lebst am Rand der Welt, wo andere längst umkehren würden. Als Blitz-Fänger, Orkan-Kurier oder Kartograf der unbekannten Stürme — du bist immer dort, wo es am gefährlichsten und aufregendsten ist.',
      'en':
          'Four to six narrow wings stacked — you maneuver even through the wildest hurricanes. You are wild, dynamic, and live at the edge of the world where others would have turned back long ago. As a lightning catcher, hurricane courier, or cartographer of unknown storms — you are always where it is most dangerous and most exciting.',
      'zh':
          '四到六片狭窄的翅膀层层相叠——纵使最狂暴的飓风，你也能自如穿梭。你狂野、灵动，栖身于他人早已折返的世界尽头。作为捕雷者、飓风信使，或未知风暴的制图师——你总在最危险、最激动人心的地方。',
      'ja':
          '四枚から六枚の細い翼を重ね — 最も荒れ狂う暴風の中さえ自在に飛ぶ。荒々しく躍動的で、他の者がとうに引き返す世界の果てに生きている。雷を捕らえる者、暴風の使者、未知の嵐の地図を描く者として — あなたはいつも、最も危険で最も心躍る場所にいる。',
      'ru':
          'От четырёх до шести узких крыльев одно над другим — ты маневрируешь даже в самых неистовых ураганах. Ты дик, динамичен и живёшь на краю мира, где другие давно бы повернули назад. Ловец молний, гонец ураганов или картограф неведомых бурь — ты всегда там, где опаснее и увлекательнее всего.',
      'pt':
          'De quatro a seis asas estreitas sobrepostas — você manobra até nos furacões mais violentos. Você é selvagem, dinâmico e vive no limite do mundo, onde outros já teriam voltado há muito tempo. Como caçador de raios, mensageiro de furacões ou cartógrafo de tempestades desconhecidas — você está sempre onde é mais perigoso e mais empolgante.',
      'fr':
          'Quatre à six ailes étroites superposées — tu manœuvres même dans les ouragans les plus déchaînés. Tu es sauvage, dynamique, et tu vis aux confins du monde, là où d\'autres auraient fait demi-tour depuis longtemps. Capteur de foudre, messager des ouragans ou cartographe des tempêtes inconnues — tu es toujours là où c\'est le plus dangereux et le plus exaltant.',
      'es':
          'De cuatro a seis alas estrechas superpuestas — maniobras incluso entre los huracanes más feroces. Eres salvaje, dinámico y vives en el confín del mundo, donde otros habrían dado media vuelta hace mucho. Como cazador de rayos, mensajero de huracanes o cartógrafo de tormentas desconocidas, siempre estás donde es más peligroso y más emocionante.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.seraphAether: DragonResult(
    subtype: DragonSubtype.seraphAether,
    species: {
      'de': 'Seraph-Drache',
      'en': 'Seraph Dragon',
      'zh': '炽天龙',
      'ja': 'セラフドラゴン',
      'ru': 'Дракон-серафим',
      'pt': 'Dragão Serafim',
      'fr': 'Dragon Séraphin',
      'es': 'Dragón Serafín',
    },
    name: {
      'de': 'Äther-Seraph',
      'en': 'Aether Seraph',
      'zh': '以太炽天龙',
      'ja': 'エーテルのセラフ',
      'ru': 'Эфирный серафим',
      'pt': 'Serafim do Éter',
      'fr': 'Séraphin de l\'Éther',
      'es': 'Serafín del Éter',
    },
    element: {
      'de': 'Äther & Sternenlicht',
      'en': 'Aether & Starlight',
      'zh': '以太与星光',
      'ja': 'エーテルと星光',
      'ru': 'Эфир и Звёздный свет',
      'pt': 'Éter e Luz das Estrelas',
      'fr': 'Éther et Lumière des Étoiles',
      'es': 'Éter y Luz Estelar',
    },
    description: {
      'de':
          'Du lebst an den allerhöchsten Stellen Draconias, nahe an der Grenze zum Weltraum. Da Worte in der dünnen Luft kaum zu hören sind, kommunizierst du fast ausschließlich durch Telepathie. Du bist ein Denker, ein Beobachter der Sterne und der Zeit. Was andere als Einsamkeit empfinden, ist für dich die reinste Form der Klarheit.',
      'en':
          'You live at the very highest points of Draconia, near the boundary of space. Since words are barely audible in the thin air, you communicate almost exclusively through telepathy. You are a thinker, an observer of stars and time. What others perceive as loneliness is for you the purest form of clarity.',
      'zh':
          '你栖居在德拉科尼亚最高之处，临近太空的边界。由于在稀薄的空气中言语几乎无法听见，你几乎完全以心灵感应交流。你是思考者，是星辰与时间的观察者。他人视为孤独之物，于你却是最纯粹的清明。',
      'ja':
          'あなたはドラコニアの最も高い地、宇宙との境近くに住んでいる。薄い空気の中では言葉がほとんど届かないため、あなたはほぼテレパシーだけで語り合う。あなたは思索する者、星と時の観察者。他の者が孤独と感じるものは、あなたにとって最も純粋な明晰さの形だ。',
      'ru':
          'Ты живёшь в самых высоких точках Драконии, у самой границы с космосом. Поскольку в разреженном воздухе слова почти не слышны, ты общаешься почти исключительно телепатией. Ты мыслитель, наблюдатель звёзд и времени. То, что другие воспринимают как одиночество, для тебя — чистейшая форма ясности.',
      'pt':
          'Você vive nos pontos mais altos de Draconia, perto da fronteira com o espaço. Como as palavras quase não são ouvidas no ar rarefeito, você se comunica quase exclusivamente por telepatia. Você é um pensador, um observador das estrelas e do tempo. O que os outros sentem como solidão é, para você, a forma mais pura de clareza.',
      'fr':
          'Tu vis aux points les plus élevés de Draconia, à la limite de l\'espace. Comme les mots sont à peine audibles dans l\'air raréfié, tu communiques presque exclusivement par télépathie. Tu es un penseur, un observateur des étoiles et du temps. Ce que d\'autres ressentent comme de la solitude est pour toi la forme la plus pure de clarté.',
      'es':
          'Vives en los puntos más altos de Draconia, cerca del límite con el espacio. Como las palabras apenas se oyen en el aire enrarecido, te comunicas casi exclusivamente por telepatía. Eres un pensador, un observador de las estrellas y del tiempo. Lo que otros perciben como soledad es para ti la forma más pura de claridad.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.faeStadt: DragonResult(
    subtype: DragonSubtype.faeStadt,
    species: {
      'de': 'Fae-Drache',
      'en': 'Fae Dragon',
      'zh': '妖精龙',
      'ja': 'フェイドラゴン',
      'ru': 'Дракон-фей',
      'pt': 'Dragão Fae',
      'fr': 'Dragon Fae',
      'es': 'Dragón Fae',
    },
    name: {
      'de': 'Stadt-Fae',
      'en': 'City Fae',
      'zh': '城市妖精龙',
      'ja': '街のフェイ',
      'ru': 'Городской фей',
      'pt': 'Fae da Cidade',
      'fr': 'Fae des Villes',
      'es': 'Fae de Ciudad',
    },
    element: {
      'de': 'Natur & Tarnung',
      'en': 'Nature & Camouflage',
      'zh': '自然与伪装',
      'ja': '自然と擬態',
      'ru': 'Природа и Маскировка',
      'pt': 'Natureza e Camuflagem',
      'fr': 'Nature et Camouflage',
      'es': 'Naturaleza y Camuflaje',
    },
    description: {
      'de':
          'Deine Drachenform ist kaum größer als ein Mensch — aber in deiner humanoiden Form überragst du fast alle. Deine Schuppen sind farbenfroh und auffällig, und du trägst sie mit Stolz. Du hast dich perfekt ans Stadtleben angepasst, ohne deine drachische Natur zu vergessen. Deine surrenden Libellenflügel machen dich präziser als jeden Großdrachen.',
      'en':
          'Your dragon form is barely larger than a human — but in your humanoid form you tower over almost everyone. Your scales are colorful and striking, and you wear them with pride. You have perfectly adapted to city life without forgetting your draconic nature. Your humming dragonfly wings make you more precise than any Great Dragon.',
      'zh':
          '你的龙形几乎只有人类大小——但化为人形时，你几乎比所有人都高。你的鳞片色彩斑斓、引人注目，而你以此为傲。你完美地适应了城市生活，却不曾忘却自己的龙性。你那嗡嗡作响的蜻蜓之翼，让你比任何巨龙都更为精准。',
      'ja':
          '竜の姿は人とほとんど変わらぬ大きさ — だが人型のときは、ほぼ誰よりも背が高い。鱗は色鮮やかで目を引き、あなたはそれを誇りをもってまとっている。竜としての本性を忘れることなく、都会の暮らしに完璧に適応した。ぶんぶんと鳴るトンボのような翼が、どんなグレートドラゴンより正確な動きをあなたに与えている。',
      'ru':
          'Твоя драконья форма едва крупнее человека — но в человекоподобном облике ты возвышаешься почти над всеми. Твоя чешуя яркая и заметная, и ты носишь её с гордостью. Ты идеально приспособился к городской жизни, не забыв своей драконьей природы. Твои жужжащие стрекозиные крылья делают тебя точнее любого Великого дракона.',
      'pt':
          'Sua forma de dragão é pouco maior que um humano — mas na sua forma humanoide você se sobressai a quase todos. Suas escamas são coloridas e marcantes, e você as exibe com orgulho. Você se adaptou perfeitamente à vida na cidade sem esquecer sua natureza dracônica. Suas zumbentes asas de libélula te tornam mais preciso que qualquer Grande Dragão.',
      'fr':
          'Ta forme de dragon est à peine plus grande qu\'un humain — mais sous ta forme humanoïde, tu domines presque tout le monde. Tes écailles sont colorées et éclatantes, et tu les portes avec fierté. Tu t\'es parfaitement adapté à la vie urbaine sans oublier ta nature draconique. Tes ailes de libellule vrombissantes te rendent plus précis que n\'importe quel Grand Dragon.',
      'es':
          'Tu forma de dragón apenas es mayor que un humano — pero en tu forma humanoide superas en altura a casi todos. Tus escamas son coloridas y llamativas, y las luces con orgullo. Te has adaptado a la perfección a la vida en la ciudad sin olvidar tu naturaleza dracónica. Tus zumbantes alas de libélula te hacen más preciso que cualquier Gran Dragón.',
    },
    rarity: {
      'de': 'Selten',
      'en': 'Rare',
      'zh': '稀有',
      'ja': '稀少',
      'ru': 'Редкий',
      'pt': 'Raro',
      'fr': 'Rare',
      'es': 'Raro',
    },
  ),

  DragonSubtype.faeWald: DragonResult(
    subtype: DragonSubtype.faeWald,
    species: {
      'de': 'Fae-Drache',
      'en': 'Fae Dragon',
      'zh': '妖精龙',
      'ja': 'フェイドラゴン',
      'ru': 'Дракон-фей',
      'pt': 'Dragão Fae',
      'fr': 'Dragon Fae',
      'es': 'Dragón Fae',
    },
    name: {
      'de': 'Wald-Fae',
      'en': 'Forest Fae',
      'zh': '森林妖精龙',
      'ja': '森のフェイ',
      'ru': 'Лесной фей',
      'pt': 'Fae da Floresta',
      'fr': 'Fae des Forêts',
      'es': 'Fae del Bosque',
    },
    element: {
      'de': 'Natur & Heilung',
      'en': 'Nature & Healing',
      'zh': '自然与治愈',
      'ja': '自然と癒し',
      'ru': 'Природа и Исцеление',
      'pt': 'Natureza e Cura',
      'fr': 'Nature et Guérison',
      'es': 'Naturaleza y Sanación',
    },
    description: {
      'de':
          'Du lebst als Einsiedler tief im Dschungel, hoch oben in den Baumkronen. Mittlerweile bist du eine Rarität. Du sammelst das magisch gereinigte Regenwasser, das durch die gigantischen Baumkronen fließt, und bringst es als Heilwasser in die Dörfer. Du bist kein Held der großen Gesten — du bist der stille Retter, den die Welt braucht.',
      'en':
          'You live as a hermit deep in the jungle, high in the treetops. You have become a rarity. You collect the magically purified rainwater that flows through the giant tree crowns and bring it as healing water to the villages. You are not a hero of grand gestures — you are the quiet savior the world needs.',
      'zh':
          '你如隐士般栖居在丛林深处、高高的树冠之上。如今你已成为稀世罕见之存在。你收集那经魔法净化、自巨大树冠间流淌而下的雨水，将其作为治愈之水带往各个村庄。你不是那种大张旗鼓的英雄——你是这个世界所需要的、默默无闻的拯救者。',
      'ja':
          'あなたは隠者として、ジャングルの奥深く、樹冠の高みに暮らしている。今やあなたは稀有な存在だ。巨大な樹冠を伝って流れる、魔法で清められた雨水を集め、癒しの水として村々へ運ぶ。あなたは大げさな振る舞いの英雄ではない — 世界が必要とする、静かな救い手だ。',
      'ru':
          'Ты живёшь отшельником в глубине джунглей, высоко в кронах деревьев. Ты стал редкостью. Ты собираешь магически очищенную дождевую воду, что стекает по гигантским кронам, и приносишь её как целебную воду в деревни. Ты не герой громких жестов — ты тихий спаситель, в котором нуждается мир.',
      'pt':
          'Você vive como um eremita nas profundezas da selva, lá no alto das copas. Você se tornou uma raridade. Você coleta a água da chuva magicamente purificada que escorre pelas gigantescas copas das árvores e a leva como água de cura às aldeias. Você não é um herói de grandes gestos — você é o salvador silencioso de que o mundo precisa.',
      'fr':
          'Tu vis en ermite au plus profond de la jungle, tout en haut de la canopée. Tu es devenu une rareté. Tu recueilles l\'eau de pluie magiquement purifiée qui s\'écoule à travers les gigantesques cimes des arbres et tu l\'apportes comme eau de guérison aux villages. Tu n\'es pas un héros aux grands gestes — tu es le sauveur silencieux dont le monde a besoin.',
      'es':
          'Vives como un ermitaño en lo profundo de la selva, en lo alto de las copas. Te has vuelto una rareza. Recoges el agua de lluvia mágicamente purificada que fluye por las gigantescas copas de los árboles y la llevas como agua sanadora a los pueblos. No eres un héroe de grandes gestos — eres el salvador silencioso que el mundo necesita.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'zh': '非常稀有',
      'ja': '非常に稀少',
      'ru': 'Очень редкий',
      'pt': 'Muito raro',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),
};
