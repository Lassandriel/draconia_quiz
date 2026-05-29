import '../models/dragon_type.dart';

class DragonResult {
  final DragonSubtype subtype;
  final String nameDe;
  final String nameEn;
  final String elementDe;
  final String elementEn;
  final String descriptionDe;
  final String descriptionEn;
  final String rarityDe;
  final String rarityEn;

  const DragonResult({
    required this.subtype,
    required this.nameDe,
    required this.nameEn,
    required this.elementDe,
    required this.elementEn,
    required this.descriptionDe,
    required this.descriptionEn,
    required this.rarityDe,
    required this.rarityEn,
  });
}

const Map<DragonSubtype, DragonResult> dragonResults = {
  DragonSubtype.grossdracheSonne: DragonResult(
    subtype: DragonSubtype.grossdracheSonne,
    nameDe: 'Sonnendrache',
    nameEn: 'Sun Dragon',
    elementDe: 'Licht',
    elementEn: 'Light',
    descriptionDe:
        'Du bist einer der seltensten Großdrachen überhaupt — ein Sonnendrache. Deine goldenen und roten Schuppen brechen das Licht wie ein Prisma. Du bist gütig, charismatisch und strahlst eine Wärme aus, die andere anzieht. Konflikte löst du mit Diplomatie, nicht mit Gewalt. Deine Größte Stärke: Du bringst Licht auch in die dunkelsten Momente.',
    descriptionEn:
        'You are one of the rarest Great Dragons — a Sun Dragon. Your golden and red scales break light like a prism. You are kind, charismatic, and radiate a warmth that draws others to you. You resolve conflicts with diplomacy, not force. Your greatest strength: you bring light even into the darkest moments.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),

  DragonSubtype.grossdracheErde: DragonResult(
    subtype: DragonSubtype.grossdracheErde,
    nameDe: 'Erddrache',
    nameEn: 'Earth Dragon',
    elementDe: 'Erde',
    elementEn: 'Earth',
    descriptionDe:
        'Deine panzerartigen Schuppen in tiefen Braun- und Grautönen wirken wie lebendiger Stein. Du bist der Fels in der Brandung — diszipliniert, taktisch und unerschütterlich. Deine Familie und deine Gemeinschaft sind dir heilig. Du planst vor dem Handeln und deine Entschlossenheit macht dich zu einem natürlichen Beschützer.',
    descriptionEn:
        'Your armor-like scales in deep brown and gray tones look like living stone. You are the rock in the storm — disciplined, tactical, and unshakeable. Your family and community are sacred to you. You plan before acting, and your resolve makes you a natural protector.',
    rarityDe: 'Häufig',
    rarityEn: 'Common',
  ),

  DragonSubtype.grossdracheGezeitenTraum: DragonResult(
    subtype: DragonSubtype.grossdracheGezeitenTraum,
    nameDe: 'Gezeiten- & Traumdrache',
    nameEn: 'Tide & Dream Dragon',
    elementDe: 'Gezeiten & Traum',
    elementEn: 'Tides & Dream',
    descriptionDe:
        'Deine Schuppen schimmern in Blau und Lila, deine Flügel wirken wie aus Nebel geformt. Du besitzt eine Tiefe, die andere kaum ahnen. Träume und Geheimnisse sind dein Element — du spürst, was andere fühlen, bevor sie es selbst wissen. Weise, ruhig und mit einem Sinn für das Unsichtbare bist du ein Brücke zwischen zwei Welten.',
    descriptionEn:
        'Your scales shimmer in blue and purple, your wings seem formed from mist. You possess a depth others rarely suspect. Dreams and secrets are your element — you sense what others feel before they know it themselves. Wise, calm, and attuned to the invisible, you are a bridge between two worlds.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.grossdracheWind: DragonResult(
    subtype: DragonSubtype.grossdracheWind,
    nameDe: 'Wind- & Luftdrache',
    nameEn: 'Wind & Air Dragon',
    elementDe: 'Wind & Luft',
    elementEn: 'Wind & Air',
    descriptionDe:
        'Deine leichte Knochenstruktur und aerodynamisch geformten Hörner sind für Geschwindigkeit gemacht. Du bist frei, impulsiv und liebst es, die Grenzen auszuloten. Kein Ort hält dich lange — du bist immer auf der Suche nach dem nächsten Horizont. Dein Lachen ist ansteckend und deine Energie grenzenlos.',
    descriptionEn:
        'Your light bone structure and aerodynamically shaped horns are made for speed. You are free, impulsive, and love pushing limits. No place holds you for long — you are always searching for the next horizon. Your laughter is contagious and your energy boundless.',
    rarityDe: 'Häufig',
    rarityEn: 'Common',
  ),

  DragonSubtype.grossdracheKristall: DragonResult(
    subtype: DragonSubtype.grossdracheKristall,
    nameDe: 'Kristalldrache',
    nameEn: 'Crystal Dragon',
    elementDe: 'Kristall',
    elementEn: 'Crystal',
    descriptionDe:
        'Deine Schuppen bestehen aus organischen Edelsteinen — sie brechen das Licht und sind extrem hart. Du bist großzügig, weise und besitzt einen Sinn für Schönheit und Ordnung. Die Dinge, die du erschaffst, halten Generationen. Dein Zuhause ist prächtig, dein Geist klar wie ein geschliffener Diamant.',
    descriptionEn:
        'Your scales are made of organic gemstones — they refract light and are extremely hard. You are generous, wise, and have a sense of beauty and order. The things you create last for generations. Your home is magnificent, your mind clear as a cut diamond.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.grossdracheFeuer: DragonResult(
    subtype: DragonSubtype.grossdracheFeuer,
    nameDe: 'Feuerdrache',
    nameEn: 'Fire Dragon',
    elementDe: 'Feuer',
    elementEn: 'Fire',
    descriptionDe:
        'Deine roten Schuppen glühen wie Kohlen. Du bist leidenschaftlich, direkt und brennst für das, woran du glaubst. Manchmal zu impulsiv, immer authentisch — du versteckst dich nie hinter Masken. Dein Feuer wärmt die, die dir nahestehen, und schützt sie vor allem, was ihnen schadet.',
    descriptionEn:
        'Your red scales glow like embers. You are passionate, direct, and burn for what you believe in. Sometimes too impulsive, always authentic — you never hide behind masks. Your fire warms those close to you and protects them from everything that might harm them.',
    rarityDe: 'Häufig',
    rarityEn: 'Common',
  ),

  DragonSubtype.lungFeuer: DragonResult(
    subtype: DragonSubtype.lungFeuer,
    nameDe: 'Lung-Drache — Feuer',
    nameEn: 'Lung Dragon — Fire',
    elementDe: 'Feuer',
    elementEn: 'Fire',
    descriptionDe:
        'Flügellos, schlangenartig, schwebend durch reine Magie — du bist ein Lung-Drache. Deine langen Bartfäden und deine Mähne entlang der Wirbelsäule machen dich unverwechselbar. Als Feuer-Lung bist du streng und mächtig, aber tief im Inneren liegt eine Wärme, die du nur deinen Liebsten zeigst. Lung-Drachen sind extrem selten.',
    descriptionEn:
        'Wingless, serpentine, hovering through pure magic — you are a Lung Dragon. Your long whiskers and mane along your spine make you unmistakable. As a Fire Lung, you are stern and powerful, but deep inside lies a warmth you only show to your closest. Lung Dragons are extremely rare.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),

  DragonSubtype.lungLicht: DragonResult(
    subtype: DragonSubtype.lungLicht,
    nameDe: 'Lung-Drache — Licht',
    nameEn: 'Lung Dragon — Light',
    elementDe: 'Licht',
    elementEn: 'Light',
    descriptionDe:
        'Ein goldener, flügelloser Drache, der durch die Luft schwebt wie durch Wasser. Dein Licht ist nicht aggressiv — es ist rein, heilend, hoffnungsvoll. Du hast eine natürliche Verbindung zu anderen Lebewesen und deine Präsenz allein kann eine verdunkelte Stimmung erhellen. Du bist selten — und kostbar.',
    descriptionEn:
        'A golden, wingless dragon that glides through the air like water. Your light is not aggressive — it is pure, healing, hopeful. You have a natural connection to other living beings, and your presence alone can brighten a darkened mood. You are rare — and precious.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),

  DragonSubtype.lungFeuerLicht: DragonResult(
    subtype: DragonSubtype.lungFeuerLicht,
    nameDe: 'Lung-Drache — Feuer & Licht',
    nameEn: 'Lung Dragon — Fire & Light',
    elementDe: 'Feuer & Licht',
    elementEn: 'Fire & Light',
    descriptionDe:
        'Du trägst zwei Elemente in dir — Feuer und Licht. Das macht dich zu einem der mächtigsten und seltensten Wesen Draconias. Du bist mutig bis zur Eigensinnigkeit, neugierig ohne Grenzen, und wenn du handelst, verändert sich die Welt um dich herum. Dein Funke ist ansteckend.',
    descriptionEn:
        'You carry two elements within you — fire and light. This makes you one of the most powerful and rarest beings in Draconia. You are brave to the point of stubbornness, endlessly curious, and when you act, the world around you changes. Your spark is contagious.',
    rarityDe: 'Legendär',
    rarityEn: 'Legendary',
  ),

  DragonSubtype.wyvernSturm: DragonResult(
    subtype: DragonSubtype.wyvernSturm,
    nameDe: 'Sturm-Wyvern',
    nameEn: 'Storm Wyvern',
    elementDe: 'Sturm & Wind',
    elementEn: 'Storm & Wind',
    descriptionDe:
        'Deine sichelförmigen Flügel schneiden durch die Luft wie Klingen. Kein anderes Lebewesen ist in der Luft schneller als du. Du lebst für den Moment, für den Nervenkitzel, für die Wildheit des Sturms. Wyvern haben keine Vorderbeine — ihre Flügel sind ihre Arme, und du weißt genau, wie du sie einsetzt.',
    descriptionEn:
        'Your sickle-shaped wings cut through the air like blades. No other creature is faster in the sky than you. You live for the moment, for the thrill, for the wildness of the storm. Wyverns have no forelegs — their wings are their arms, and you know exactly how to use them.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.wyvernFrost: DragonResult(
    subtype: DragonSubtype.wyvernFrost,
    nameDe: 'Frost-Wyvern',
    nameEn: 'Frost Wyvern',
    elementDe: 'Frost & Eis',
    elementEn: 'Frost & Ice',
    descriptionDe:
        'Deine Flügelmembran ist dick und kältebeständig, an den Gelenken hängen Eiszapfen. Du bist kalt nach außen, aber nicht nach innen — du testest jeden, der dir nahe kommen will. Wer dein Vertrauen gewinnt, hat einen unerschütterlichen Verbündeten. Du handelst überlegt, präzise, unerbittlich.',
    descriptionEn:
        'Your wing membrane is thick and cold-resistant, with icicles at the joints. You are cold on the outside, but not on the inside — you test everyone who wants to get close. Whoever earns your trust has an unshakeable ally. You act deliberately, precisely, relentlessly.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.lindwurmMagma: DragonResult(
    subtype: DragonSubtype.lindwurmMagma,
    nameDe: 'Magma-Lindwurm',
    nameEn: 'Magma Lindworm',
    elementDe: 'Magma & Feuer',
    elementEn: 'Magma & Fire',
    descriptionDe:
        'Deine Haut ähnelt glühender Lava und du lebst dort, wo anderen der Boden unter den Füßen zu heiß wird. Lindwürmer haben nur zwei Vorderbeine und einen langen, schlangenartigen Körper. Du bist ein Meisterhandwerker — kein anderer taucht tiefer in das Magmameer als du, und kein anderer schmiedet stärkere Waffen.',
    descriptionEn:
        'Your skin resembles glowing lava, and you live where the ground gets too hot for others. Lindworms have only two forelegs and a long, serpentine body. You are a master craftsman — no one dives deeper into the magma sea than you, and no one forges stronger weapons.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.lindwurmSumpf: DragonResult(
    subtype: DragonSubtype.lindwurmSumpf,
    nameDe: 'Sumpf-Lindwurm',
    nameEn: 'Swamp Lindworm',
    elementDe: 'Natur & Erde',
    elementEn: 'Nature & Earth',
    descriptionDe:
        'Deine Schuppen tarnen dich perfekt in jedem Wald, jedem Sumpf, jedem Dickicht. Du wirst unterschätzt — und das ist deine größte Waffe. Anpassungsfähig, geduldig und mit einem tiefen Gespür für das Lebendige bist du dort am stärksten, wo andere nicht hinschauen.',
    descriptionEn:
        'Your scales perfectly camouflage you in any forest, swamp, or thicket. You are underestimated — and that is your greatest weapon. Adaptable, patient, and with a deep sense for the living world, you are strongest where others are not looking.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.amphithereTraum: DragonResult(
    subtype: DragonSubtype.amphithereTraum,
    nameDe: 'Traum-Amphithere',
    nameEn: 'Dream Amphithere',
    elementDe: 'Traum & Nebel',
    elementEn: 'Dream & Mist',
    descriptionDe:
        'Keine Beine — nur ein schlangenartiger Körper und mächtige Federschwingen. Dein Flügelschlag erzeugt Nebel, der Illusionen und Träume hervorruft. Du bist ein Wandler zwischen den Welten — real und unwirklich zugleich. Andere wissen nie ganz, was sie von dir zu erwarten haben, und genau das macht dich faszinierend.',
    descriptionEn:
        'No legs — just a serpentine body and magnificent feathered wings. Your wingbeat creates mist that conjures illusions and dreams. You are a walker between worlds — real and unreal at once. Others never quite know what to expect from you, and that is exactly what makes you fascinating.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),

  DragonSubtype.amphithereSonne: DragonResult(
    subtype: DragonSubtype.amphithereSonne,
    nameDe: 'Sonnen-Amphithere',
    nameEn: 'Sun Amphithere',
    elementDe: 'Licht & Feuer',
    elementEn: 'Light & Fire',
    descriptionDe:
        'Deine Federn glühen in goldenem Licht. Bei Gefahr kannst du eine blendende Lichtexplosion auslösen. Du bist warm, charismatisch und strahlend — aber unterschätze deine Stärke nicht. Hinter der Eleganz steckt eine Kraft, die selbst ausgewachsene Großdrachen zur Vorsicht mahnt.',
    descriptionEn:
        'Your feathers glow in golden light. In danger, you can unleash a blinding light explosion. You are warm, charismatic, and radiant — but do not underestimate your strength. Behind the elegance is a power that even grown Great Dragons treat with caution.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),

  DragonSubtype.leviathanGezeiten: DragonResult(
    subtype: DragonSubtype.leviathanGezeiten,
    nameDe: 'Gezeiten-Leviathan',
    nameEn: 'Tide Leviathan',
    elementDe: 'Wasser & Gezeiten',
    elementEn: 'Water & Tides',
    descriptionDe:
        'Du beherrschst die Wasserinseln und Wasserwege Draconias. Deine gewaltigen Schwingen funktionieren unter Wasser wie die Flossen eines Mantarochens, und du besitzt feine Kiemenschlitze. Du bist ein Architekt und Navigator — du formst die Welt um dich herum, während andere einfach durch sie hindurchschwimmen.',
    descriptionEn:
        'You rule the water islands and waterways of Draconia. Your enormous wings function underwater like manta ray fins, and you possess fine gill slits. You are an architect and navigator — you shape the world around you while others simply swim through it.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.leviathanMagma: DragonResult(
    subtype: DragonSubtype.leviathanMagma,
    nameDe: 'Magma-Leviathan',
    nameEn: 'Magma Leviathan',
    elementDe: 'Magma & Feuer',
    elementEn: 'Magma & Fire',
    descriptionDe:
        'Du lebst auf den untersten, heißesten Inseln über dem Lavameer — ein Ort, den andere meiden. Deine massiven, obsidianartigen Schuppen sind Panzerung und Identität zugleich. Du bist Draconias unangefochtener Meisterschmied. Deine Arbeit hält ewig. Du selbst auch fast.',
    descriptionEn:
        'You live on the lowest, hottest islands above the lava sea — a place others avoid. Your massive, obsidian-like scales are both armor and identity. You are Draconia\'s undisputed master smith. Your work lasts forever. So do you, almost.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.seraphGewitter: DragonResult(
    subtype: DragonSubtype.seraphGewitter,
    nameDe: 'Gewitter-Seraph',
    nameEn: 'Storm Seraph',
    elementDe: 'Blitz & Donner',
    elementEn: 'Lightning & Thunder',
    descriptionDe:
        'Vier bis sechs schmale Flügel übereinander — du manövrierst selbst durch wildeste Orkane. Du bist wild, dynamisch und lebst am Rand der Welt, wo andere längst umkehren würden. Als Blitz-Fänger, Orkan-Kurier oder Kartograf der unbekannten Stürme — du bist immer dort, wo es am gefährlichsten und aufregendsten ist.',
    descriptionEn:
        'Four to six narrow wings stacked — you maneuver even through the wildest hurricanes. You are wild, dynamic, and live at the edge of the world where others would have turned back long ago. As a lightning catcher, hurricane courier, or cartographer of unknown storms — you are always where it is most dangerous and most exciting.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.seraphAether: DragonResult(
    subtype: DragonSubtype.seraphAether,
    nameDe: 'Äther-Seraph',
    nameEn: 'Aether Seraph',
    elementDe: 'Äther & Sternenlicht',
    elementEn: 'Aether & Starlight',
    descriptionDe:
        'Du lebst an den allerhöchsten Stellen Draconias, nahe an der Grenze zum Weltraum. Da Worte in der dünnen Luft kaum zu hören sind, kommunizierst du fast ausschließlich durch Telepathie. Du bist ein Denker, ein Beobachter der Sterne und der Zeit. Was andere als Einsamkeit empfinden, ist für dich die reinste Form der Klarheit.',
    descriptionEn:
        'You live at the very highest points of Draconia, near the boundary of space. Since words are barely audible in the thin air, you communicate almost exclusively through telepathy. You are a thinker, an observer of stars and time. What others perceive as loneliness is for you the purest form of clarity.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),

  DragonSubtype.faeStadt: DragonResult(
    subtype: DragonSubtype.faeStadt,
    nameDe: 'Stadt-Fae',
    nameEn: 'City Fae',
    elementDe: 'Natur & Tarnung',
    elementEn: 'Nature & Camouflage',
    descriptionDe:
        'Deine Drachenform ist kaum größer als ein Mensch — aber in deiner humanoiden Form überragst du fast alle. Deine Schuppen sind farbenfroh und auffällig, und du trägst sie mit Stolz. Du hast dich perfekt ans Stadtleben angepasst, ohne deine drachische Natur zu vergessen. Deine surrenden Libellenflügel machen dich präziser als jeden Großdrachen.',
    descriptionEn:
        'Your dragon form is barely larger than a human — but in your humanoid form you tower over almost everyone. Your scales are colorful and striking, and you wear them with pride. You have perfectly adapted to city life without forgetting your draconic nature. Your humming dragonfly wings make you more precise than any Great Dragon.',
    rarityDe: 'Selten',
    rarityEn: 'Rare',
  ),

  DragonSubtype.faeWald: DragonResult(
    subtype: DragonSubtype.faeWald,
    nameDe: 'Wald-Fae',
    nameEn: 'Forest Fae',
    elementDe: 'Natur & Heilung',
    elementEn: 'Nature & Healing',
    descriptionDe:
        'Du lebst als Einsiedler tief im Dschungel, hoch oben in den Baumkronen. Mittlerweile bist du eine Rarität. Du sammelst das magisch gereinigte Regenwasser, das durch die gigantischen Baumkronen fließt, und bringst es als Heilwasser in die Dörfer. Du bist kein Held der großen Gesten — du bist der stille Retter, den die Welt braucht.',
    descriptionEn:
        'You live as a hermit deep in the jungle, high in the treetops. You have become a rarity. You collect the magically purified rainwater that flows through the giant tree crowns and bring it as healing water to the villages. You are not a hero of grand gestures — you are the quiet savior the world needs.',
    rarityDe: 'Sehr selten',
    rarityEn: 'Very rare',
  ),
};
