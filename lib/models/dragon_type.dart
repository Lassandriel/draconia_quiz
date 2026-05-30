enum DragonSubtype {
  // Großdrache
  grossdracheSonne,
  grossdracheErde,
  grossdracheGezeitenTraum,
  grossdracheWind,
  grossdracheKristall,
  grossdracheFeuer,
  // Lung-Drache
  lungFeuer,
  lungLicht,
  lungFeuerLicht,
  // Wyvern
  wyvernSturm,
  wyvernFrost,
  // Lindwurm
  lindwurmMagma,
  lindwurmSumpf,
  // Amphithere
  amphithereTraum,
  amphithereSonne,
  // Leviathan
  leviathanGezeiten,
  leviathanMagma,
  // Seraph
  seraphGewitter,
  seraphAether,
  // Fae
  faeStadt,
  faeWald,
}

extension DragonSubtypeImage on DragonSubtype {
  String get imagePath {
    const base = 'assets/images/results';
    switch (this) {
      case DragonSubtype.grossdracheSonne:        return '$base/grossdrache/grossdrache_sonne.webp';
      case DragonSubtype.grossdracheErde:         return '$base/grossdrache/grossdrache_erde.webp';
      case DragonSubtype.grossdracheGezeitenTraum:return '$base/grossdrache/grossdrache_gezeiten_traum.webp';
      case DragonSubtype.grossdracheWind:         return '$base/grossdrache/grossdrache_wind.webp';
      case DragonSubtype.grossdracheKristall:     return '$base/grossdrache/grossdrache_kristall.webp';
      case DragonSubtype.grossdracheFeuer:        return '$base/grossdrache/grossdrache_feuer.webp';
      case DragonSubtype.lungFeuer:               return '$base/lung_drache/lung_feuer.webp';
      case DragonSubtype.lungLicht:               return '$base/lung_drache/lung_licht.webp';
      case DragonSubtype.lungFeuerLicht:          return '$base/lung_drache/lung_feuer_licht.webp';
      case DragonSubtype.wyvernSturm:             return '$base/wyvern/wyvern_sturm.webp';
      case DragonSubtype.wyvernFrost:             return '$base/wyvern/wyvern_frost.webp';
      case DragonSubtype.lindwurmMagma:           return '$base/lindwurm/lindwurm_magma.webp';
      case DragonSubtype.lindwurmSumpf:           return '$base/lindwurm/lindwurm_sumpf.webp';
      case DragonSubtype.amphithereTraum:         return '$base/amphithere/amphithere_traum.webp';
      case DragonSubtype.amphithereSonne:         return '$base/amphithere/amphithere_sonne.webp';
      case DragonSubtype.leviathanGezeiten:       return '$base/leviathan/leviathan_gezeiten.webp';
      case DragonSubtype.leviathanMagma:          return '$base/leviathan/leviathan_magma.webp';
      case DragonSubtype.seraphGewitter:          return '$base/seraph/seraph_gewitter.webp';
      case DragonSubtype.seraphAether:            return '$base/seraph/seraph_aether.webp';
      case DragonSubtype.faeStadt:                return '$base/fae_drache/fae_stadt.webp';
      case DragonSubtype.faeWald:                 return '$base/fae_drache/fae_wald.webp';
    }
  }

  String get elementIconPath {
    const base = 'assets/icons/elements';
    switch (this) {
      case DragonSubtype.grossdracheSonne:
      case DragonSubtype.amphithereSonne:
      case DragonSubtype.lungLicht:               return '$base/icon_licht.webp';
      case DragonSubtype.grossdracheErde:         return '$base/icon_erde.webp';
      case DragonSubtype.grossdracheGezeitenTraum:
      case DragonSubtype.leviathanGezeiten:       return '$base/icon_gezeiten.webp';
      case DragonSubtype.grossdracheWind:
      case DragonSubtype.wyvernSturm:             return '$base/icon_wind.webp';
      case DragonSubtype.grossdracheKristall:     return '$base/icon_kristall.webp';
      case DragonSubtype.grossdracheFeuer:
      case DragonSubtype.lungFeuer:               return '$base/icon_feuer.webp';
      case DragonSubtype.lungFeuerLicht:          return '$base/icon_feuer.webp';
      case DragonSubtype.wyvernFrost:             return '$base/icon_kristall.webp';
      case DragonSubtype.lindwurmMagma:
      case DragonSubtype.leviathanMagma:          return '$base/icon_magma.webp';
      case DragonSubtype.lindwurmSumpf:
      case DragonSubtype.faeWald:
      case DragonSubtype.faeStadt:                return '$base/icon_natur.webp';
      case DragonSubtype.amphithereTraum:         return '$base/icon_traum.webp';
      case DragonSubtype.seraphGewitter:          return '$base/icon_blitz.webp';
      case DragonSubtype.seraphAether:            return '$base/icon_aether.webp';
    }
  }
}
