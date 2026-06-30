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
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Sonnendrache',
      'en': 'Sun Dragon',
      'fr': 'Dragon du Soleil',
      'es': 'Dragón del Sol',
    },
    element: {'de': 'Licht', 'en': 'Light', 'fr': 'Lumière', 'es': 'Luz'},
    description: {
      'de':
          'Du bist einer der seltensten Großdrachen überhaupt — ein Sonnendrache. Deine goldenen und roten Schuppen brechen das Licht wie ein Prisma. Du bist gütig, charismatisch und strahlst eine Wärme aus, die andere anzieht. Konflikte löst du mit Diplomatie, nicht mit Gewalt. Deine Größte Stärke: Du bringst Licht auch in die dunkelsten Momente.',
      'en':
          'You are one of the rarest Great Dragons — a Sun Dragon. Your golden and red scales break light like a prism. You are kind, charismatic, and radiate a warmth that draws others to you. You resolve conflicts with diplomacy, not force. Your greatest strength: you bring light even into the darkest moments.',
      'fr':
          'Tu es l\'un des Grands Dragons les plus rares qui soient — un Dragon du Soleil. Tes écailles dorées et rouges décomposent la lumière comme un prisme. Tu es bienveillant, charismatique et tu rayonnes une chaleur qui attire les autres. Tu règles les conflits par la diplomatie, non par la force. Ta plus grande force : tu apportes la lumière jusque dans les moments les plus sombres.',
      'es':
          'Eres uno de los Grandes Dragones más raros que existen: un Dragón del Sol. Tus escamas doradas y rojas descomponen la luz como un prisma. Eres bondadoso, carismático e irradias una calidez que atrae a los demás. Resuelves los conflictos con diplomacia, no con la fuerza. Tu mayor fortaleza: llevas luz incluso a los momentos más oscuros.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.grossdracheErde: DragonResult(
    subtype: DragonSubtype.grossdracheErde,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Erddrache',
      'en': 'Earth Dragon',
      'fr': 'Dragon de la Terre',
      'es': 'Dragón de la Tierra',
    },
    element: {'de': 'Erde', 'en': 'Earth', 'fr': 'Terre', 'es': 'Tierra'},
    description: {
      'de':
          'Deine panzerartigen Schuppen in tiefen Braun- und Grautönen wirken wie lebendiger Stein. Du bist der Fels in der Brandung — diszipliniert, taktisch und unerschütterlich. Deine Familie und deine Gemeinschaft sind dir heilig. Du planst vor dem Handeln und deine Entschlossenheit macht dich zu einem natürlichen Beschützer.',
      'en':
          'Your armor-like scales in deep brown and gray tones look like living stone. You are the rock in the storm — disciplined, tactical, and unshakeable. Your family and community are sacred to you. You plan before acting, and your resolve makes you a natural protector.',
      'fr':
          'Tes écailles, telle une armure aux tons bruns et gris profonds, ressemblent à de la pierre vivante. Tu es le roc dans la tempête — discipliné, tactique et inébranlable. Ta famille et ta communauté te sont sacrées. Tu réfléchis avant d\'agir, et ta détermination fait de toi un protecteur né.',
      'es':
          'Tus escamas, como una armadura en tonos marrones y grises profundos, parecen piedra viva. Eres la roca en medio de la tormenta: disciplinado, táctico e inquebrantable. Tu familia y tu comunidad son sagradas para ti. Planificas antes de actuar, y tu determinación te convierte en un protector nato.',
    },
    rarity: {'de': 'Häufig', 'en': 'Common', 'fr': 'Commun', 'es': 'Común'},
  ),

  DragonSubtype.grossdracheGezeitenTraum: DragonResult(
    subtype: DragonSubtype.grossdracheGezeitenTraum,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Gezeiten- & Traumdrache',
      'en': 'Tide & Dream Dragon',
      'fr': 'Dragon des Marées et des Rêves',
      'es': 'Dragón de Mareas y Sueños',
    },
    element: {
      'de': 'Gezeiten & Traum',
      'en': 'Tides & Dream',
      'fr': 'Marées et Rêve',
      'es': 'Mareas y Sueño',
    },
    description: {
      'de':
          'Deine Schuppen schimmern in Blau und Lila, deine Flügel wirken wie aus Nebel geformt. Du besitzt eine Tiefe, die andere kaum ahnen. Träume und Geheimnisse sind dein Element — du spürst, was andere fühlen, bevor sie es selbst wissen. Weise, ruhig und mit einem Sinn für das Unsichtbare bist du eine Brücke zwischen zwei Welten.',
      'en':
          'Your scales shimmer in blue and purple, your wings seem formed from mist. You possess a depth others rarely suspect. Dreams and secrets are your element — you sense what others feel before they know it themselves. Wise, calm, and attuned to the invisible, you are a bridge between two worlds.',
      'fr':
          'Tes écailles chatoient de bleu et de violet, et tes ailes semblent faites de brume. Tu possèdes une profondeur que peu soupçonnent. Les rêves et les secrets sont ton élément — tu ressens ce que les autres éprouvent avant même qu\'ils ne le sachent. Sage, calme et accordé à l\'invisible, tu es un pont entre deux mondes.',
      'es':
          'Tus escamas brillan en azul y púrpura, y tus alas parecen formadas de niebla. Posees una profundidad que pocos sospechan. Los sueños y los secretos son tu elemento: percibes lo que otros sienten antes de que ellos mismos lo sepan. Sabio, sereno y en sintonía con lo invisible, eres un puente entre dos mundos.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.grossdracheWind: DragonResult(
    subtype: DragonSubtype.grossdracheWind,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Wind- & Luftdrache',
      'en': 'Wind & Air Dragon',
      'fr': 'Dragon du Vent et de l\'Air',
      'es': 'Dragón de Viento y Aire',
    },
    element: {
      'de': 'Wind & Luft',
      'en': 'Wind & Air',
      'fr': 'Vent et Air',
      'es': 'Viento y Aire',
    },
    description: {
      'de':
          'Deine leichte Knochenstruktur und aerodynamisch geformten Hörner sind für Geschwindigkeit gemacht. Du bist frei, impulsiv und liebst es, die Grenzen auszuloten. Kein Ort hält dich lange — du bist immer auf der Suche nach dem nächsten Horizont. Dein Lachen ist ansteckend und deine Energie grenzenlos.',
      'en':
          'Your light bone structure and aerodynamically shaped horns are made for speed. You are free, impulsive, and love pushing limits. No place holds you for long — you are always searching for the next horizon. Your laughter is contagious and your energy boundless.',
      'fr':
          'Ta structure osseuse légère et tes cornes au profil aérodynamique sont faites pour la vitesse. Tu es libre, impulsif et tu adores repousser les limites. Aucun lieu ne te retient longtemps — tu cherches toujours le prochain horizon. Ton rire est contagieux et ton énergie sans limites.',
      'es':
          'Tu ligera estructura ósea y tus cuernos de forma aerodinámica están hechos para la velocidad. Eres libre, impulsivo y te encanta poner a prueba los límites. Ningún lugar te retiene mucho tiempo: siempre buscas el próximo horizonte. Tu risa es contagiosa y tu energía no tiene fin.',
    },
    rarity: {'de': 'Häufig', 'en': 'Common', 'fr': 'Commun', 'es': 'Común'},
  ),

  DragonSubtype.grossdracheKristall: DragonResult(
    subtype: DragonSubtype.grossdracheKristall,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Kristalldrache',
      'en': 'Crystal Dragon',
      'fr': 'Dragon de Cristal',
      'es': 'Dragón de Cristal',
    },
    element: {
      'de': 'Kristall',
      'en': 'Crystal',
      'fr': 'Cristal',
      'es': 'Cristal',
    },
    description: {
      'de':
          'Deine Schuppen bestehen aus organischen Edelsteinen — sie brechen das Licht und sind extrem hart. Du bist großzügig, weise und besitzt einen Sinn für Schönheit und Ordnung. Die Dinge, die du erschaffst, halten Generationen. Dein Zuhause ist prächtig, dein Geist klar wie ein geschliffener Diamant.',
      'en':
          'Your scales are made of organic gemstones — they refract light and are extremely hard. You are generous, wise, and have a sense of beauty and order. The things you create last for generations. Your home is magnificent, your mind clear as a cut diamond.',
      'fr':
          'Tes écailles sont faites de gemmes organiques — elles réfractent la lumière et sont extrêmement dures. Tu es généreux, sage, et tu as le sens de la beauté et de l\'ordre. Ce que tu crées dure des générations. Ta demeure est magnifique, ton esprit clair comme un diamant taillé.',
      'es':
          'Tus escamas están hechas de gemas orgánicas: refractan la luz y son extremadamente duras. Eres generoso, sabio y tienes sentido de la belleza y el orden. Lo que creas perdura durante generaciones. Tu hogar es magnífico y tu mente, clara como un diamante tallado.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.grossdracheFeuer: DragonResult(
    subtype: DragonSubtype.grossdracheFeuer,
    species: {
      'de': 'Großdrache',
      'en': 'Great Dragon',
      'fr': 'Grand Dragon',
      'es': 'Gran Dragón',
    },
    name: {
      'de': 'Feuerdrache',
      'en': 'Fire Dragon',
      'fr': 'Dragon de Feu',
      'es': 'Dragón de Fuego',
    },
    element: {'de': 'Feuer', 'en': 'Fire', 'fr': 'Feu', 'es': 'Fuego'},
    description: {
      'de':
          'Deine roten Schuppen glühen wie Kohlen. Du bist leidenschaftlich, direkt und brennst für das, woran du glaubst. Manchmal zu impulsiv, immer authentisch — du versteckst dich nie hinter Masken. Dein Feuer wärmt die, die dir nahestehen, und schützt sie vor allem, was ihnen schadet.',
      'en':
          'Your red scales glow like embers. You are passionate, direct, and burn for what you believe in. Sometimes too impulsive, always authentic — you never hide behind masks. Your fire warms those close to you and protects them from everything that might harm them.',
      'fr':
          'Tes écailles rouges rougeoient comme des braises. Tu es passionné, direct, et tu brûles pour ce en quoi tu crois. Parfois trop impulsif, toujours authentique — tu ne te caches jamais derrière des masques. Ton feu réchauffe ceux qui te sont proches et les protège de tout ce qui pourrait leur nuire.',
      'es':
          'Tus escamas rojas brillan como brasas. Eres apasionado, directo y ardes por aquello en lo que crees. A veces demasiado impulsivo, siempre auténtico: nunca te escondes tras máscaras. Tu fuego da calor a quienes te rodean y los protege de todo lo que pueda dañarlos.',
    },
    rarity: {'de': 'Häufig', 'en': 'Common', 'fr': 'Commun', 'es': 'Común'},
  ),

  DragonSubtype.lungFeuer: DragonResult(
    subtype: DragonSubtype.lungFeuer,
    species: {
      'de': 'Lung-Drache',
      'en': 'Lung Dragon',
      'fr': 'Dragon Lung',
      'es': 'Dragón Lung',
    },
    name: {
      'de': 'Feuer-Lung',
      'en': 'Fire Lung',
      'fr': 'Lung de Feu',
      'es': 'Lung de Fuego',
    },
    element: {'de': 'Feuer', 'en': 'Fire', 'fr': 'Feu', 'es': 'Fuego'},
    description: {
      'de':
          'Flügellos, schlangenartig, schwebend durch reine Magie — du bist ein Lung-Drache. Deine langen Bartfäden und deine Mähne entlang der Wirbelsäule machen dich unverwechselbar. Als Feuer-Lung bist du streng und mächtig, aber tief im Inneren liegt eine Wärme, die du nur deinen Liebsten zeigst. Lung-Drachen sind extrem selten.',
      'en':
          'Wingless, serpentine, hovering through pure magic — you are a Lung Dragon. Your long whiskers and mane along your spine make you unmistakable. As a Fire Lung, you are stern and powerful, but deep inside lies a warmth you only show to your closest. Lung Dragons are extremely rare.',
      'fr':
          'Sans ailes, serpentin, flottant grâce à la pure magie — tu es un Dragon Lung. Tes longues moustaches et la crinière le long de ton échine te rendent reconnaissable entre tous. En tant que Lung de Feu, tu es sévère et puissant, mais au plus profond se cache une chaleur que tu ne montres qu\'aux tiens. Les Dragons Lung sont extrêmement rares.',
      'es':
          'Sin alas, serpentino, flotando gracias a pura magia: eres un Dragón Lung. Tus largos bigotes y la melena a lo largo de tu columna te hacen inconfundible. Como Lung de Fuego, eres severo y poderoso, pero en lo más hondo guardas una calidez que solo muestras a los tuyos. Los Dragones Lung son extremadamente raros.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.lungLicht: DragonResult(
    subtype: DragonSubtype.lungLicht,
    species: {
      'de': 'Lung-Drache',
      'en': 'Lung Dragon',
      'fr': 'Dragon Lung',
      'es': 'Dragón Lung',
    },
    name: {
      'de': 'Licht-Lung',
      'en': 'Light Lung',
      'fr': 'Lung de Lumière',
      'es': 'Lung de Luz',
    },
    element: {'de': 'Licht', 'en': 'Light', 'fr': 'Lumière', 'es': 'Luz'},
    description: {
      'de':
          'Ein goldener, flügelloser Drache, der durch die Luft schwebt wie durch Wasser. Dein Licht ist nicht aggressiv — es ist rein, heilend, hoffnungsvoll. Du hast eine natürliche Verbindung zu anderen Lebewesen und deine Präsenz allein kann eine verdunkelte Stimmung erhellen. Du bist selten — und kostbar.',
      'en':
          'A golden, wingless dragon that glides through the air like water. Your light is not aggressive — it is pure, healing, hopeful. You have a natural connection to other living beings, and your presence alone can brighten a darkened mood. You are rare — and precious.',
      'fr':
          'Un dragon doré et sans ailes qui glisse dans l\'air comme dans l\'eau. Ta lumière n\'est pas agressive — elle est pure, guérisseuse, pleine d\'espoir. Tu as un lien naturel avec les autres êtres vivants, et ta seule présence peut éclairer une humeur assombrie. Tu es rare — et précieux.',
      'es':
          'Un dragón dorado y sin alas que se desliza por el aire como por el agua. Tu luz no es agresiva: es pura, sanadora, esperanzadora. Tienes una conexión natural con los demás seres vivos, y tu sola presencia puede iluminar un ánimo sombrío. Eres raro — y valioso.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.lungFeuerLicht: DragonResult(
    subtype: DragonSubtype.lungFeuerLicht,
    species: {
      'de': 'Lung-Drache',
      'en': 'Lung Dragon',
      'fr': 'Dragon Lung',
      'es': 'Dragón Lung',
    },
    name: {
      'de': 'Feuer- & Licht-Lung',
      'en': 'Fire & Light Lung',
      'fr': 'Lung de Feu et de Lumière',
      'es': 'Lung de Fuego y Luz',
    },
    element: {
      'de': 'Feuer & Licht',
      'en': 'Fire & Light',
      'fr': 'Feu et Lumière',
      'es': 'Fuego y Luz',
    },
    description: {
      'de':
          'Du trägst zwei Elemente in dir — Feuer und Licht. Das macht dich zu einem der mächtigsten und seltensten Wesen Draconias. Du bist mutig bis zur Eigensinnigkeit, neugierig ohne Grenzen, und wenn du handelst, verändert sich die Welt um dich herum. Dein Funke ist ansteckend.',
      'en':
          'You carry two elements within you — fire and light. This makes you one of the most powerful and rarest beings in Draconia. You are brave to the point of stubbornness, endlessly curious, and when you act, the world around you changes. Your spark is contagious.',
      'fr':
          'Tu portes deux éléments en toi — le feu et la lumière. Cela fait de toi l\'un des êtres les plus puissants et les plus rares de Draconia. Tu es courageux jusqu\'à l\'entêtement, infiniment curieux, et quand tu agis, le monde autour de toi change. Ton étincelle est contagieuse.',
      'es':
          'Llevas dos elementos en tu interior: fuego y luz. Eso te convierte en uno de los seres más poderosos y raros de Draconia. Eres valiente hasta la obstinación, infinitamente curioso, y cuando actúas, el mundo a tu alrededor cambia. Tu chispa es contagiosa.',
    },
    rarity: {
      'de': 'Legendär',
      'en': 'Legendary',
      'fr': 'Légendaire',
      'es': 'Legendario',
    },
  ),

  DragonSubtype.wyvernSturm: DragonResult(
    subtype: DragonSubtype.wyvernSturm,
    species: {'de': 'Wyvern', 'en': 'Wyvern', 'fr': 'Wyverne', 'es': 'Wyvern'},
    name: {
      'de': 'Sturm-Wyvern',
      'en': 'Storm Wyvern',
      'fr': 'Wyverne des Tempêtes',
      'es': 'Wyvern de Tormenta',
    },
    element: {
      'de': 'Sturm & Wind',
      'en': 'Storm & Wind',
      'fr': 'Tempête et Vent',
      'es': 'Tormenta y Viento',
    },
    description: {
      'de':
          'Deine sichelförmigen Flügel schneiden durch die Luft wie Klingen. Kein anderes Lebewesen ist in der Luft schneller als du. Du lebst für den Moment, für den Nervenkitzel, für die Wildheit des Sturms. Wyvern haben keine Vorderbeine — ihre Flügel sind ihre Arme, und du weißt genau, wie du sie einsetzt.',
      'en':
          'Your sickle-shaped wings cut through the air like blades. No other creature is faster in the sky than you. You live for the moment, for the thrill, for the wildness of the storm. Wyverns have no forelegs — their wings are their arms, and you know exactly how to use them.',
      'fr':
          'Tes ailes en forme de faux fendent l\'air comme des lames. Aucune autre créature n\'est plus rapide que toi dans le ciel. Tu vis pour l\'instant, pour le frisson, pour la fureur de la tempête. Les wyvernes n\'ont pas de pattes avant — leurs ailes sont leurs bras, et tu sais exactement comment t\'en servir.',
      'es':
          'Tus alas en forma de hoz cortan el aire como cuchillas. Ninguna otra criatura es más veloz que tú en el cielo. Vives para el momento, para la emoción, para la furia de la tormenta. Los wyvern no tienen patas delanteras: sus alas son sus brazos, y tú sabes exactamente cómo usarlas.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.wyvernFrost: DragonResult(
    subtype: DragonSubtype.wyvernFrost,
    species: {'de': 'Wyvern', 'en': 'Wyvern', 'fr': 'Wyverne', 'es': 'Wyvern'},
    name: {
      'de': 'Frost-Wyvern',
      'en': 'Frost Wyvern',
      'fr': 'Wyverne du Givre',
      'es': 'Wyvern de Escarcha',
    },
    element: {
      'de': 'Frost & Eis',
      'en': 'Frost & Ice',
      'fr': 'Givre et Glace',
      'es': 'Escarcha y Hielo',
    },
    description: {
      'de':
          'Deine Flügelmembran ist dick und kältebeständig, an den Gelenken hängen Eiszapfen. Du bist kalt nach außen, aber nicht nach innen — du testest jeden, der dir nahe kommen will. Wer dein Vertrauen gewinnt, hat einen unerschütterlichen Verbündeten. Du handelst überlegt, präzise, unerbittlich.',
      'en':
          'Your wing membrane is thick and cold-resistant, with icicles at the joints. You are cold on the outside, but not on the inside — you test everyone who wants to get close. Whoever earns your trust has an unshakeable ally. You act deliberately, precisely, relentlessly.',
      'fr':
          'La membrane de tes ailes est épaisse et résistante au froid, avec des glaçons aux articulations. Tu es froid en apparence, mais pas à l\'intérieur — tu mets à l\'épreuve quiconque veut s\'approcher. Qui gagne ta confiance a un allié inébranlable. Tu agis avec réflexion, précision, sans relâche.',
      'es':
          'La membrana de tus alas es gruesa y resistente al frío, con carámbanos en las articulaciones. Eres frío por fuera, pero no por dentro: pones a prueba a todo el que quiere acercarse. Quien se gana tu confianza tiene un aliado inquebrantable. Actúas con cautela, con precisión, sin tregua.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.lindwurmMagma: DragonResult(
    subtype: DragonSubtype.lindwurmMagma,
    species: {
      'de': 'Lindwurm',
      'en': 'Lindworm',
      'fr': 'Lindworm',
      'es': 'Lindworm',
    },
    name: {
      'de': 'Magma-Lindwurm',
      'en': 'Magma Lindworm',
      'fr': 'Lindworm de Magma',
      'es': 'Lindworm de Magma',
    },
    element: {
      'de': 'Magma & Feuer',
      'en': 'Magma & Fire',
      'fr': 'Magma et Feu',
      'es': 'Magma y Fuego',
    },
    description: {
      'de':
          'Deine Haut ähnelt glühender Lava und du lebst dort, wo anderen der Boden unter den Füßen zu heiß wird. Lindwürmer haben nur zwei Vorderbeine und einen langen, schlangenartigen Körper. Du bist ein Meisterhandwerker — kein anderer taucht tiefer in das Magmameer als du, und kein anderer schmiedet stärkere Waffen.',
      'en':
          'Your skin resembles glowing lava, and you live where the ground gets too hot for others. Lindworms have only two forelegs and a long, serpentine body. You are a master craftsman — no one dives deeper into the magma sea than you, and no one forges stronger weapons.',
      'fr':
          'Ta peau ressemble à de la lave incandescente, et tu vis là où le sol devient trop brûlant pour les autres. Les lindworms n\'ont que deux pattes avant et un long corps serpentin. Tu es un maître artisan — nul ne plonge plus profond dans la mer de magma que toi, et nul ne forge d\'armes plus puissantes.',
      'es':
          'Tu piel se asemeja a la lava incandescente, y vives donde el suelo se vuelve demasiado caliente para los demás. Los lindworm tienen solo dos patas delanteras y un cuerpo largo y serpentino. Eres un maestro artesano: nadie se sumerge más hondo en el mar de magma que tú, y nadie forja armas más fuertes.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.lindwurmSumpf: DragonResult(
    subtype: DragonSubtype.lindwurmSumpf,
    species: {
      'de': 'Lindwurm',
      'en': 'Lindworm',
      'fr': 'Lindworm',
      'es': 'Lindworm',
    },
    name: {
      'de': 'Sumpf-Lindwurm',
      'en': 'Swamp Lindworm',
      'fr': 'Lindworm des Marais',
      'es': 'Lindworm de Pantano',
    },
    element: {
      'de': 'Natur & Erde',
      'en': 'Nature & Earth',
      'fr': 'Nature et Terre',
      'es': 'Naturaleza y Tierra',
    },
    description: {
      'de':
          'Deine Schuppen tarnen dich perfekt in jedem Wald, jedem Sumpf, jedem Dickicht. Du wirst unterschätzt — und das ist deine größte Waffe. Anpassungsfähig, geduldig und mit einem tiefen Gespür für das Lebendige bist du dort am stärksten, wo andere nicht hinschauen.',
      'en':
          'Your scales perfectly camouflage you in any forest, swamp, or thicket. You are underestimated — and that is your greatest weapon. Adaptable, patient, and with a deep sense for the living world, you are strongest where others are not looking.',
      'fr':
          'Tes écailles te camouflent à la perfection dans n\'importe quelle forêt, marais ou fourré. On te sous-estime — et c\'est là ta plus grande arme. Adaptable, patient et doté d\'un sens profond du vivant, tu es le plus fort là où personne ne regarde.',
      'es':
          'Tus escamas te camuflan a la perfección en cualquier bosque, pantano o maleza. Te subestiman — y esa es tu mayor arma. Adaptable, paciente y con un profundo instinto para todo lo vivo, eres más fuerte allí donde nadie mira.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.amphithereTraum: DragonResult(
    subtype: DragonSubtype.amphithereTraum,
    species: {
      'de': 'Amphithere',
      'en': 'Amphithere',
      'fr': 'Amphiptère',
      'es': 'Anfítero',
    },
    name: {
      'de': 'Traum-Amphithere',
      'en': 'Dream Amphithere',
      'fr': 'Amphiptère des Rêves',
      'es': 'Anfítero del Sueño',
    },
    element: {
      'de': 'Traum & Nebel',
      'en': 'Dream & Mist',
      'fr': 'Rêve et Brume',
      'es': 'Sueño y Niebla',
    },
    description: {
      'de':
          'Keine Beine — nur ein schlangenartiger Körper und mächtige Federschwingen. Dein Flügelschlag erzeugt Nebel, der Illusionen und Träume hervorruft. Du bist ein Wandler zwischen den Welten — real und unwirklich zugleich. Andere wissen nie ganz, was sie von dir zu erwarten haben, und genau das macht dich faszinierend.',
      'en':
          'No legs — just a serpentine body and magnificent feathered wings. Your wingbeat creates mist that conjures illusions and dreams. You are a walker between worlds — real and unreal at once. Others never quite know what to expect from you, and that is exactly what makes you fascinating.',
      'fr':
          'Pas de pattes — seulement un corps serpentin et de magnifiques ailes de plumes. Ton battement d\'ailes crée une brume qui évoque illusions et rêves. Tu es un marcheur entre les mondes — réel et irréel à la fois. Les autres ne savent jamais vraiment à quoi s\'attendre de ta part, et c\'est précisément ce qui te rend fascinant.',
      'es':
          'Sin patas: solo un cuerpo serpentino y magníficas alas de plumas. Tu aleteo crea una niebla que evoca ilusiones y sueños. Eres un caminante entre mundos — real e irreal a la vez. Los demás nunca saben del todo qué esperar de ti, y eso es justo lo que te hace fascinante.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.amphithereSonne: DragonResult(
    subtype: DragonSubtype.amphithereSonne,
    species: {
      'de': 'Amphithere',
      'en': 'Amphithere',
      'fr': 'Amphiptère',
      'es': 'Anfítero',
    },
    name: {
      'de': 'Sonnen-Amphithere',
      'en': 'Sun Amphithere',
      'fr': 'Amphiptère du Soleil',
      'es': 'Anfítero del Sol',
    },
    element: {
      'de': 'Licht & Feuer',
      'en': 'Light & Fire',
      'fr': 'Lumière et Feu',
      'es': 'Luz y Fuego',
    },
    description: {
      'de':
          'Deine Federn glühen in goldenem Licht. Bei Gefahr kannst du eine blendende Lichtexplosion auslösen. Du bist warm, charismatisch und strahlend — aber unterschätze deine Stärke nicht. Hinter der Eleganz steckt eine Kraft, die selbst ausgewachsene Großdrachen zur Vorsicht mahnt.',
      'en':
          'Your feathers glow in golden light. In danger, you can unleash a blinding light explosion. You are warm, charismatic, and radiant — but do not underestimate your strength. Behind the elegance is a power that even grown Great Dragons treat with caution.',
      'fr':
          'Tes plumes brillent d\'une lumière dorée. En cas de danger, tu peux déclencher une explosion de lumière aveuglante. Tu es chaleureux, charismatique et rayonnant — mais ne sous-estime pas ta force. Derrière l\'élégance se cache une puissance que même les Grands Dragons adultes traitent avec prudence.',
      'es':
          'Tus plumas brillan con luz dorada. Ante el peligro, puedes desatar una cegadora explosión de luz. Eres cálido, carismático y radiante — pero no subestimes tu fuerza. Tras la elegancia se esconde un poder que incluso los Grandes Dragones adultos tratan con cautela.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.leviathanGezeiten: DragonResult(
    subtype: DragonSubtype.leviathanGezeiten,
    species: {
      'de': 'Leviathan',
      'en': 'Leviathan',
      'fr': 'Léviathan',
      'es': 'Leviatán',
    },
    name: {
      'de': 'Gezeiten-Leviathan',
      'en': 'Tide Leviathan',
      'fr': 'Léviathan des Marées',
      'es': 'Leviatán de las Mareas',
    },
    element: {
      'de': 'Wasser & Gezeiten',
      'en': 'Water & Tides',
      'fr': 'Eau et Marées',
      'es': 'Agua y Mareas',
    },
    description: {
      'de':
          'Du beherrschst die Wasserinseln und Wasserwege Draconias. Deine gewaltigen Schwingen funktionieren unter Wasser wie die Flossen eines Mantarochens, und du besitzt feine Kiemenschlitze. Du bist ein Architekt und Navigator — du formst die Welt um dich herum, während andere einfach durch sie hindurchschwimmen.',
      'en':
          'You rule the water islands and waterways of Draconia. Your enormous wings function underwater like manta ray fins, and you possess fine gill slits. You are an architect and navigator — you shape the world around you while others simply swim through it.',
      'fr':
          'Tu règnes sur les îles d\'eau et les voies navigables de Draconia. Tes ailes immenses fonctionnent sous l\'eau comme les nageoires d\'une raie manta, et tu possèdes de fines fentes branchiales. Tu es un architecte et un navigateur — tu façonnes le monde autour de toi pendant que les autres se contentent de le traverser à la nage.',
      'es':
          'Reinas sobre las islas de agua y las vías acuáticas de Draconia. Tus enormes alas funcionan bajo el agua como las aletas de una mantarraya, y posees finas hendiduras branquiales. Eres arquitecto y navegante: das forma al mundo que te rodea mientras otros simplemente nadan a través de él.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.leviathanMagma: DragonResult(
    subtype: DragonSubtype.leviathanMagma,
    species: {
      'de': 'Leviathan',
      'en': 'Leviathan',
      'fr': 'Léviathan',
      'es': 'Leviatán',
    },
    name: {
      'de': 'Magma-Leviathan',
      'en': 'Magma Leviathan',
      'fr': 'Léviathan de Magma',
      'es': 'Leviatán de Magma',
    },
    element: {
      'de': 'Magma & Feuer',
      'en': 'Magma & Fire',
      'fr': 'Magma et Feu',
      'es': 'Magma y Fuego',
    },
    description: {
      'de':
          'Du lebst auf den untersten, heißesten Inseln über dem Lavameer — ein Ort, den andere meiden. Deine massiven, obsidianartigen Schuppen sind Panzerung und Identität zugleich. Du bist Draconias unangefochtener Meisterschmied. Deine Arbeit hält ewig. Du selbst auch fast.',
      'en':
          'You live on the lowest, hottest islands above the lava sea — a place others avoid. Your massive, obsidian-like scales are both armor and identity. You are Draconia\'s undisputed master smith. Your work lasts forever. So do you, almost.',
      'fr':
          'Tu vis sur les îles les plus basses et les plus chaudes au-dessus de la mer de lave — un endroit que les autres évitent. Tes écailles massives, semblables à de l\'obsidienne, sont à la fois armure et identité. Tu es le maître forgeron incontesté de Draconia. Ton œuvre dure éternellement. Toi aussi, ou presque.',
      'es':
          'Vives en las islas más bajas y calurosas sobre el mar de lava — un lugar que los demás evitan. Tus enormes escamas, como de obsidiana, son a la vez armadura e identidad. Eres el indiscutible maestro herrero de Draconia. Tu obra dura para siempre. Tú también, casi.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.seraphGewitter: DragonResult(
    subtype: DragonSubtype.seraphGewitter,
    species: {
      'de': 'Seraph-Drache',
      'en': 'Seraph Dragon',
      'fr': 'Dragon Séraphin',
      'es': 'Dragón Serafín',
    },
    name: {
      'de': 'Gewitter-Seraph',
      'en': 'Storm Seraph',
      'fr': 'Séraphin des Tempêtes',
      'es': 'Serafín de Tormenta',
    },
    element: {
      'de': 'Blitz & Donner',
      'en': 'Lightning & Thunder',
      'fr': 'Foudre et Tonnerre',
      'es': 'Rayo y Trueno',
    },
    description: {
      'de':
          'Vier bis sechs schmale Flügel übereinander — du manövrierst selbst durch wildeste Orkane. Du bist wild, dynamisch und lebst am Rand der Welt, wo andere längst umkehren würden. Als Blitz-Fänger, Orkan-Kurier oder Kartograf der unbekannten Stürme — du bist immer dort, wo es am gefährlichsten und aufregendsten ist.',
      'en':
          'Four to six narrow wings stacked — you maneuver even through the wildest hurricanes. You are wild, dynamic, and live at the edge of the world where others would have turned back long ago. As a lightning catcher, hurricane courier, or cartographer of unknown storms — you are always where it is most dangerous and most exciting.',
      'fr':
          'Quatre à six ailes étroites superposées — tu manœuvres même dans les ouragans les plus déchaînés. Tu es sauvage, dynamique, et tu vis aux confins du monde, là où d\'autres auraient fait demi-tour depuis longtemps. Capteur de foudre, messager des ouragans ou cartographe des tempêtes inconnues — tu es toujours là où c\'est le plus dangereux et le plus exaltant.',
      'es':
          'De cuatro a seis alas estrechas superpuestas — maniobras incluso entre los huracanes más feroces. Eres salvaje, dinámico y vives en el confín del mundo, donde otros habrían dado media vuelta hace mucho. Como cazador de rayos, mensajero de huracanes o cartógrafo de tormentas desconocidas, siempre estás donde es más peligroso y más emocionante.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.seraphAether: DragonResult(
    subtype: DragonSubtype.seraphAether,
    species: {
      'de': 'Seraph-Drache',
      'en': 'Seraph Dragon',
      'fr': 'Dragon Séraphin',
      'es': 'Dragón Serafín',
    },
    name: {
      'de': 'Äther-Seraph',
      'en': 'Aether Seraph',
      'fr': 'Séraphin de l\'Éther',
      'es': 'Serafín del Éter',
    },
    element: {
      'de': 'Äther & Sternenlicht',
      'en': 'Aether & Starlight',
      'fr': 'Éther et Lumière des Étoiles',
      'es': 'Éter y Luz Estelar',
    },
    description: {
      'de':
          'Du lebst an den allerhöchsten Stellen Draconias, nahe an der Grenze zum Weltraum. Da Worte in der dünnen Luft kaum zu hören sind, kommunizierst du fast ausschließlich durch Telepathie. Du bist ein Denker, ein Beobachter der Sterne und der Zeit. Was andere als Einsamkeit empfinden, ist für dich die reinste Form der Klarheit.',
      'en':
          'You live at the very highest points of Draconia, near the boundary of space. Since words are barely audible in the thin air, you communicate almost exclusively through telepathy. You are a thinker, an observer of stars and time. What others perceive as loneliness is for you the purest form of clarity.',
      'fr':
          'Tu vis aux points les plus élevés de Draconia, à la limite de l\'espace. Comme les mots sont à peine audibles dans l\'air raréfié, tu communiques presque exclusivement par télépathie. Tu es un penseur, un observateur des étoiles et du temps. Ce que d\'autres ressentent comme de la solitude est pour toi la forme la plus pure de clarté.',
      'es':
          'Vives en los puntos más altos de Draconia, cerca del límite con el espacio. Como las palabras apenas se oyen en el aire enrarecido, te comunicas casi exclusivamente por telepatía. Eres un pensador, un observador de las estrellas y del tiempo. Lo que otros perciben como soledad es para ti la forma más pura de claridad.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),

  DragonSubtype.faeStadt: DragonResult(
    subtype: DragonSubtype.faeStadt,
    species: {
      'de': 'Fae-Drache',
      'en': 'Fae Dragon',
      'fr': 'Dragon Fae',
      'es': 'Dragón Fae',
    },
    name: {
      'de': 'Stadt-Fae',
      'en': 'City Fae',
      'fr': 'Fae des Villes',
      'es': 'Fae de Ciudad',
    },
    element: {
      'de': 'Natur & Tarnung',
      'en': 'Nature & Camouflage',
      'fr': 'Nature et Camouflage',
      'es': 'Naturaleza y Camuflaje',
    },
    description: {
      'de':
          'Deine Drachenform ist kaum größer als ein Mensch — aber in deiner humanoiden Form überragst du fast alle. Deine Schuppen sind farbenfroh und auffällig, und du trägst sie mit Stolz. Du hast dich perfekt ans Stadtleben angepasst, ohne deine drachische Natur zu vergessen. Deine surrenden Libellenflügel machen dich präziser als jeden Großdrachen.',
      'en':
          'Your dragon form is barely larger than a human — but in your humanoid form you tower over almost everyone. Your scales are colorful and striking, and you wear them with pride. You have perfectly adapted to city life without forgetting your draconic nature. Your humming dragonfly wings make you more precise than any Great Dragon.',
      'fr':
          'Ta forme de dragon est à peine plus grande qu\'un humain — mais sous ta forme humanoïde, tu domines presque tout le monde. Tes écailles sont colorées et éclatantes, et tu les portes avec fierté. Tu t\'es parfaitement adapté à la vie urbaine sans oublier ta nature draconique. Tes ailes de libellule vrombissantes te rendent plus précis que n\'importe quel Grand Dragon.',
      'es':
          'Tu forma de dragón apenas es mayor que un humano — pero en tu forma humanoide superas en altura a casi todos. Tus escamas son coloridas y llamativas, y las luces con orgullo. Te has adaptado a la perfección a la vida en la ciudad sin olvidar tu naturaleza dracónica. Tus zumbantes alas de libélula te hacen más preciso que cualquier Gran Dragón.',
    },
    rarity: {'de': 'Selten', 'en': 'Rare', 'fr': 'Rare', 'es': 'Raro'},
  ),

  DragonSubtype.faeWald: DragonResult(
    subtype: DragonSubtype.faeWald,
    species: {
      'de': 'Fae-Drache',
      'en': 'Fae Dragon',
      'fr': 'Dragon Fae',
      'es': 'Dragón Fae',
    },
    name: {
      'de': 'Wald-Fae',
      'en': 'Forest Fae',
      'fr': 'Fae des Forêts',
      'es': 'Fae del Bosque',
    },
    element: {
      'de': 'Natur & Heilung',
      'en': 'Nature & Healing',
      'fr': 'Nature et Guérison',
      'es': 'Naturaleza y Sanación',
    },
    description: {
      'de':
          'Du lebst als Einsiedler tief im Dschungel, hoch oben in den Baumkronen. Mittlerweile bist du eine Rarität. Du sammelst das magisch gereinigte Regenwasser, das durch die gigantischen Baumkronen fließt, und bringst es als Heilwasser in die Dörfer. Du bist kein Held der großen Gesten — du bist der stille Retter, den die Welt braucht.',
      'en':
          'You live as a hermit deep in the jungle, high in the treetops. You have become a rarity. You collect the magically purified rainwater that flows through the giant tree crowns and bring it as healing water to the villages. You are not a hero of grand gestures — you are the quiet savior the world needs.',
      'fr':
          'Tu vis en ermite au plus profond de la jungle, tout en haut de la canopée. Tu es devenu une rareté. Tu recueilles l\'eau de pluie magiquement purifiée qui s\'écoule à travers les gigantesques cimes des arbres et tu l\'apportes comme eau de guérison aux villages. Tu n\'es pas un héros aux grands gestes — tu es le sauveur silencieux dont le monde a besoin.',
      'es':
          'Vives como un ermitaño en lo profundo de la selva, en lo alto de las copas. Te has vuelto una rareza. Recoges el agua de lluvia mágicamente purificada que fluye por las gigantescas copas de los árboles y la llevas como agua sanadora a los pueblos. No eres un héroe de grandes gestos — eres el salvador silencioso que el mundo necesita.',
    },
    rarity: {
      'de': 'Sehr selten',
      'en': 'Very rare',
      'fr': 'Très rare',
      'es': 'Muy raro',
    },
  ),
};
