part of co.com.poke.home;

class PokemonDetailModel {
  final int id;
  final String name;
  final int baseExperience;
  final double height; // en metros
  final double weight; // en kg
  final List<String> types;
  final List<String> abilities;
  final String imageUrl;
  final String cryUrl;

  // Extras localizados
  final String categoryKey; // -> clave en arb (ej: pokemonCategorySeed)
  final String
      descriptionKey; // -> clave en arb (ej: pokemonDescriptionBulbasaur)
  final double maleRate;
  final double femaleRate;
  final List<String> weaknesses;

  PokemonDetailModel({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
    required this.imageUrl,
    required this.cryUrl,
    required this.categoryKey,
    required this.descriptionKey,
    required this.maleRate,
    required this.femaleRate,
    required this.weaknesses,
  });

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) {
    final mock = _mockExtras(json['id']);

    final types = (json['types'] as List)
        .map((e) => e['type']['name'] as String)
        .map((t) => _typeTranslations[t] ?? t)
        .toList();

    final abilities = (json['abilities'] as List)
        .map((e) => e['ability']['name'] as String)
        .map((a) => _abilityTranslations[a] ?? a)
        .toList();

    return PokemonDetailModel(
      id: json['id'],
      name: json['name'],
      baseExperience: json['base_experience'] ?? 0,
      height: (json['height'] ?? 0) / 10.0,
      weight: (json['weight'] ?? 0) / 10.0,
      types: types,
      abilities: abilities,
      imageUrl: json['sprites']['front_default'] ?? '',
      cryUrl: json['cries']?['latest'] ?? '',
      categoryKey: mock['category']!,
      descriptionKey: mock['description']!,
      maleRate: mock['maleRate']!,
      femaleRate: mock['femaleRate']!,
      weaknesses: List<String>.from(mock['weaknesses']!),
    );
  }

  /// Obtener categoría localizada
  String category(AppLocalizations loc) {
    switch (categoryKey) {
      case "pokemonCategorySeed":
        return loc.pokemonCategorySeed;
      case "pokemonCategoryLizard":
        return loc.pokemonCategoryLizard;
      case "pokemonCategoryFlame":
        return loc.pokemonCategoryFlame;
      case "pokemonCategoryTinyTurtle":
        return loc.pokemonCategoryTinyTurtle;
      case "pokemonCategoryTurtle":
        return loc.pokemonCategoryTurtle;
      case "pokemonCategoryShellfish":
        return loc.pokemonCategoryShellfish;
      case "pokemonCategoryWorm":
        return loc.pokemonCategoryWorm;
      case "pokemonCategoryCocoon":
        return loc.pokemonCategoryCocoon;
      case "pokemonCategoryButterfly":
        return loc.pokemonCategoryButterfly;
      case "pokemonCategoryBee":
        return loc.pokemonCategoryBee;
      case "pokemonCategoryTinyBird":
        return loc.pokemonCategoryTinyBird;
      case "pokemonCategoryBird":
        return loc.pokemonCategoryBird;
      case "pokemonCategoryMouse":
        return loc.pokemonCategoryMouse;
      default:
        return categoryKey; // fallback
    }
  }

  /// Obtener descripción localizada
  String description(AppLocalizations loc) {
    switch (descriptionKey) {
      case "pokemonDescriptionBulbasaur":
        return loc.pokemonDescriptionBulbasaur;
      case "pokemonDescriptionIvysaur":
        return loc.pokemonDescriptionIvysaur;
      case "pokemonDescriptionVenusaur":
        return loc.pokemonDescriptionVenusaur;
      case "pokemonDescriptionCharmander":
        return loc.pokemonDescriptionCharmander;
      case "pokemonDescriptionCharmeleon":
        return loc.pokemonDescriptionCharmeleon;
      case "pokemonDescriptionCharizard":
        return loc.pokemonDescriptionCharizard;
      case "pokemonDescriptionSquirtle":
        return loc.pokemonDescriptionSquirtle;
      case "pokemonDescriptionWartortle":
        return loc.pokemonDescriptionWartortle;
      case "pokemonDescriptionBlastoise":
        return loc.pokemonDescriptionBlastoise;
      case "pokemonDescriptionCaterpie":
        return loc.pokemonDescriptionCaterpie;
      case "pokemonDescriptionMetapod":
        return loc.pokemonDescriptionMetapod;
      case "pokemonDescriptionButterfree":
        return loc.pokemonDescriptionButterfree;
      case "pokemonDescriptionWeedle":
        return loc.pokemonDescriptionWeedle;
      case "pokemonDescriptionKakuna":
        return loc.pokemonDescriptionKakuna;
      case "pokemonDescriptionBeedrill":
        return loc.pokemonDescriptionBeedrill;
      case "pokemonDescriptionPidgey":
        return loc.pokemonDescriptionPidgey;
      case "pokemonDescriptionPidgeotto":
        return loc.pokemonDescriptionPidgeotto;
      case "pokemonDescriptionPidgeot":
        return loc.pokemonDescriptionPidgeot;
      case "pokemonDescriptionRattata":
        return loc.pokemonDescriptionRattata;
      case "pokemonDescriptionRaticate":
        return loc.pokemonDescriptionRaticate;
      default:
        return descriptionKey; // fallback
    }
  }

  // Traducciones de tipos
  static const Map<String, String> _typeTranslations = {
    "grass": "pokemonTypeGrass",
    "poison": "pokemonTypePoison",
    "fire": "pokemonTypeFire",
    "water": "pokemonTypeWater",
    "electric": "pokemonTypeElectric",
    "bug": "pokemonTypeBug",
    "flying": "pokemonTypeFlying",
    "normal": "pokemonTypeNormal",
    "rock": "pokemonTypeRock",
    "psychic": "pokemonTypePsychic",
    "ground": "pokemonTypeGround",
    "ice": "pokemonTypeIce",
    "dragon": "pokemonTypeDragon",
    "dark": "pokemonTypeDark",
    "fairy": "pokemonTypeFairy",
    "steel": "pokemonTypeSteel",
    "ghost": "pokemonTypeGhost",
    "fighting": "pokemonTypeFighting",
  };

  // Traducciones de habilidades
  static const Map<String, String> _abilityTranslations = {
    "overgrow": "pokemonAbilityOvergrow",
    "chlorophyll": "pokemonAbilityChlorophyll",
    "blaze": "pokemonAbilityBlaze",
    "solar-power": "pokemonAbilitySolarPower",
    "torrent": "pokemonAbilityTorrent",
    "shield-dust": "pokemonAbilityShieldDust",
    "shed-skin": "pokemonAbilityShedSkin",
    "compound-eyes": "pokemonAbilityCompoundEyes",
    "swarm": "pokemonAbilitySwarm",
    "keen-eye": "pokemonAbilityKeenEye",
    "tangled-feet": "pokemonAbilityTangledFeet",
    "run-away": "pokemonAbilityRunAway",
  };

  /// Mockups extras para los primeros 20 Pokémon
  static Map<String, dynamic> _mockExtras(int id) {
    const data = {
      1: {
        "category": "pokemonCategorySeed",
        "description": "pokemonDescriptionBulbasaur",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      2: {
        "category": "pokemonCategorySeed",
        "description": "pokemonDescriptionIvysaur",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      3: {
        "category": "pokemonCategorySeed",
        "description": "pokemonDescriptionVenusaur",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      4: {
        "category": "pokemonCategoryLizard",
        "description": "pokemonDescriptionCharmander",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": [
          "pokemonTypeWater",
        ]
      },
      5: {
        "category": "pokemonCategoryFlame",
        "description": "pokemonDescriptionCharmeleon",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": [
          "pokemonTypeWater",
        ]
      },
      6: {
        "category": "pokemonCategoryFlame",
        "description": "pokemonDescriptionCharizard",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": ["pokemonTypeWater", "pokemonTypeElectric"]
      },
      7: {
        "category": "pokemonCategoryTinyTurtle",
        "description": "pokemonDescriptionSquirtle",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": ["pokemonTypeElectric", "pokemonTypeGrass"]
      },
      8: {
        "category": "pokemonCategoryTurtle",
        "description": "pokemonDescriptionWartortle",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": ["pokemonTypeElectric", "pokemonTypeGrass"]
      },
      9: {
        "category": "pokemonCategoryShellfish",
        "description": "pokemonDescriptionBlastoise",
        "maleRate": 87.5,
        "femaleRate": 12.5,
        "weaknesses": ["pokemonTypeElectric", "pokemonTypeGrass"]
      },
      10: {
        "category": "pokemonCategoryWorm",
        "description": "pokemonDescriptionCaterpie",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      11: {
        "category": "pokemonCategoryCocoon",
        "description": "pokemonDescriptionMetapod",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      12: {
        "category": "pokemonCategoryButterfly",
        "description": "pokemonDescriptionButterfree",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
          "pokemonTypeElectric",
        ]
      },
      13: {
        "category": "pokemonCategoryWorm",
        "description": "pokemonDescriptionWeedle",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      14: {
        "category": "pokemonCategoryCocoon",
        "description": "pokemonDescriptionKakuna",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      15: {
        "category": "pokemonCategoryBee",
        "description": "pokemonDescriptionBeedrill",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeFire",
          "pokemonTypeFlying",
        ]
      },
      16: {
        "category": "pokemonCategoryTinyBird",
        "description": "pokemonDescriptionPidgey",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeElectric",
        ]
      },
      17: {
        "category": "pokemonCategoryBird",
        "description": "pokemonDescriptionPidgeotto",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeElectric",
        ]
      },
      18: {
        "category": "pokemonCategoryBird",
        "description": "pokemonDescriptionPidgeot",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [
          "pokemonTypeElectric",
        ]
      },
      19: {
        "category": "pokemonCategoryMouse",
        "description": "pokemonDescriptionRattata",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [""]
      },
      20: {
        "category": "pokemonCategoryMouse",
        "description": "pokemonDescriptionRaticate",
        "maleRate": 50.0,
        "femaleRate": 50.0,
        "weaknesses": [""]
      },
    };

    return data[id] ??
        {
          "category": "pokemonCategorySeed",
          "description": "pokemonDescriptionUnknown",
          "maleRate": 50.0,
          "femaleRate": 50.0,
          "weaknesses": ["pokemonTypeNormal"]
        };
  }
}
