enum DragonType {
  grossdrache,
  lungDrache,
  wyvern,
  lindwurm,
  amphithere,
  leviathan,
  seraph,
  faeDrache,
}

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
      case DragonSubtype.grossdracheSonne:        return '$base/grossdrache/grossdrache_sonne.png';
      case DragonSubtype.grossdracheErde:         return '$base/grossdrache/grossdrache_erde.png';
      case DragonSubtype.grossdracheGezeitenTraum:return '$base/grossdrache/grossdrache_gezeiten_traum.png';
      case DragonSubtype.grossdracheWind:         return '$base/grossdrache/grossdrache_wind.png';
      case DragonSubtype.grossdracheKristall:     return '$base/grossdrache/grossdrache_kristall.png';
      case DragonSubtype.grossdracheFeuer:        return '$base/grossdrache/grossdrache_feuer.png';
      case DragonSubtype.lungFeuer:               return '$base/lung_drache/lung_feuer.png';
      case DragonSubtype.lungLicht:               return '$base/lung_drache/lung_licht.png';
      case DragonSubtype.lungFeuerLicht:          return '$base/lung_drache/lung_feuer_licht.png';
      case DragonSubtype.wyvernSturm:             return '$base/wyvern/wyvern_sturm.png';
      case DragonSubtype.wyvernFrost:             return '$base/wyvern/wyvern_frost.png';
      case DragonSubtype.lindwurmMagma:           return '$base/lindwurm/lindwurm_magma.png';
      case DragonSubtype.lindwurmSumpf:           return '$base/lindwurm/lindwurm_sumpf.png';
      case DragonSubtype.amphithereTraum:         return '$base/amphithere/amphithere_traum.png';
      case DragonSubtype.amphithereSonne:         return '$base/amphithere/amphithere_sonne.png';
      case DragonSubtype.leviathanGezeiten:       return '$base/leviathan/leviathan_gezeiten.png';
      case DragonSubtype.leviathanMagma:          return '$base/leviathan/leviathan_magma.png';
      case DragonSubtype.seraphGewitter:          return '$base/seraph/seraph_gewitter.png';
      case DragonSubtype.seraphAether:            return '$base/seraph/seraph_aether.png';
      case DragonSubtype.faeStadt:                return '$base/fae_drache/fae_stadt.png';
      case DragonSubtype.faeWald:                 return '$base/fae_drache/fae_wald.png';
    }
  }

  String get elementIconPath {
    const base = 'assets/icons/elements';
    switch (this) {
      case DragonSubtype.grossdracheSonne:
      case DragonSubtype.amphithereSonne:
      case DragonSubtype.lungLicht:               return '$base/icon_licht.png';
      case DragonSubtype.grossdracheErde:         return '$base/icon_erde.png';
      case DragonSubtype.grossdracheGezeitenTraum:
      case DragonSubtype.leviathanGezeiten:       return '$base/icon_gezeiten.png';
      case DragonSubtype.grossdracheWind:
      case DragonSubtype.wyvernSturm:             return '$base/icon_wind.png';
      case DragonSubtype.grossdracheKristall:     return '$base/icon_kristall.png';
      case DragonSubtype.grossdracheFeuer:
      case DragonSubtype.lungFeuer:               return '$base/icon_feuer.png';
      case DragonSubtype.lungFeuerLicht:          return '$base/icon_feuer.png';
      case DragonSubtype.wyvernFrost:             return '$base/icon_kristall.png';
      case DragonSubtype.lindwurmMagma:
      case DragonSubtype.leviathanMagma:          return '$base/icon_magma.png';
      case DragonSubtype.lindwurmSumpf:
      case DragonSubtype.faeWald:
      case DragonSubtype.faeStadt:                return '$base/icon_natur.png';
      case DragonSubtype.amphithereTraum:         return '$base/icon_traum.png';
      case DragonSubtype.seraphGewitter:          return '$base/icon_blitz.png';
      case DragonSubtype.seraphAether:            return '$base/icon_aether.png';
    }
  }
}
