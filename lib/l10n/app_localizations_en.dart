import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get hello => 'Hello!';

  @override
  String get welcome => 'Welcome to PokeApp';

  @override
  String get onboardingPage1Title => 'All Pokémon in one place';

  @override
  String get onboardingPage1Description => 'Access a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get onboardingPage2Title => 'Keep your Pokédex updated';

  @override
  String get onboardingPage2Description => 'Register and save your profile, favorite Pokémon, settings, and much more in the app';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get onboardingStart => 'Let\'s start';

  @override
  String get homeTitle => 'Your Pokédex';

  @override
  String get homeSubtitle => 'Explore and manage your favorite Pokémon';

  @override
  String get navigationPokedex => 'Pokédex';

  @override
  String get navigationRegions => 'Regions';

  @override
  String get navigationFavorites => 'Favorites';

  @override
  String get navigationProfile => 'Profile';

  @override
  String get pokemonDetailWeight => 'Weight';

  @override
  String get pokemonDetailHeight => 'Height';

  @override
  String get pokemonDetailCategory => 'Category';

  @override
  String get pokemonDetailAbility => 'Ability';

  @override
  String get pokemonDetailGender => 'Gender';

  @override
  String pokemonDetailMale(Object value) {
    return '♂ $value%';
  }

  @override
  String pokemonDetailFemale(Object value) {
    return '♀ $value%';
  }

  @override
  String get pokemonDetailWeaknesses => 'Weaknesses';

  @override
  String get filtersTitle => 'Filter by your preferences';

  @override
  String get filtersType => 'Type';

  @override
  String get filtersApply => 'Apply';

  @override
  String get filtersCancel => 'Cancel';

  @override
  String get filtersClear => 'Clear filter';

  @override
  String get filtersfound => 'They have been found';

  @override
  String get filtersResultsFound => 'results';

  @override
  String get filtersNoResults => 'No Pokémon of that type';

  @override
  String get favoritesEmpty => 'You don’t have favorite Pokémon yet';

  @override
  String get errorsNoPokemons => 'No Pokémon available';

  @override
  String get errorsLoading => 'An error occurred while loading Pokémon';

  @override
  String get searchHint => 'Search Pokémon...';

  @override
  String get pokemonTypeGrass => 'Grass';

  @override
  String get pokemonTypePoison => 'Poison';

  @override
  String get pokemonTypeFire => 'Fire';

  @override
  String get pokemonTypeWater => 'Water';

  @override
  String get pokemonTypeElectric => 'Electric';

  @override
  String get pokemonTypeBug => 'Bug';

  @override
  String get pokemonTypeFlying => 'Flying';

  @override
  String get pokemonTypeNormal => 'Normal';

  @override
  String get pokemonTypeRock => 'Rock';

  @override
  String get pokemonTypePsychic => 'Psychic';

  @override
  String get pokemonTypeGround => 'Ground';

  @override
  String get pokemonTypeIce => 'Ice';

  @override
  String get pokemonTypeDragon => 'Dragon';

  @override
  String get pokemonTypeDark => 'Dark';

  @override
  String get pokemonTypeFairy => 'Fairy';

  @override
  String get pokemonTypeSteel => 'Steel';

  @override
  String get pokemonTypeGhost => 'Ghost';

  @override
  String get pokemonTypeFighting => 'Fighting';

  @override
  String get pokemonAbilityOvergrow => 'Overgrow';

  @override
  String get pokemonAbilityChlorophyll => 'Chlorophyll';

  @override
  String get pokemonAbilityBlaze => 'Blaze';

  @override
  String get pokemonAbilitySolarPower => 'Solar Power';

  @override
  String get pokemonAbilityTorrent => 'Torrent';

  @override
  String get pokemonAbilityShieldDust => 'Shield Dust';

  @override
  String get pokemonAbilityShedSkin => 'Shed Skin';

  @override
  String get pokemonAbilityCompoundEyes => 'Compound Eyes';

  @override
  String get pokemonAbilitySwarm => 'Swarm';

  @override
  String get pokemonAbilityKeenEye => 'Keen Eye';

  @override
  String get pokemonAbilityTangledFeet => 'Tangled Feet';

  @override
  String get pokemonAbilityRunAway => 'Run Away';

  @override
  String get pokemonCategorySeed => 'Seed Pokémon';

  @override
  String get pokemonCategoryLizard => 'Lizard Pokémon';

  @override
  String get pokemonCategoryFlame => 'Flame Pokémon';

  @override
  String get pokemonCategoryTinyTurtle => 'Tiny Turtle Pokémon';

  @override
  String get pokemonCategoryTurtle => 'Turtle Pokémon';

  @override
  String get pokemonCategoryShellfish => 'Shellfish Pokémon';

  @override
  String get pokemonCategoryWorm => 'Worm Pokémon';

  @override
  String get pokemonCategoryCocoon => 'Cocoon Pokémon';

  @override
  String get pokemonCategoryButterfly => 'Butterfly Pokémon';

  @override
  String get pokemonCategoryBird => 'Bird Pokémon';

  @override
  String get pokemonCategoryMouse => 'Mouse Pokémon';

  @override
  String get pokemonDescriptionBulbasaur => 'A plant Pokémon that grows with a seed on its back.';

  @override
  String get pokemonDescriptionIvysaur => 'Its bulb grows with age, releasing solar energy.';

  @override
  String get pokemonDescriptionVenusaur => 'The flower on its back blooms when absorbing solar energy.';

  @override
  String get pokemonDescriptionCharmander => 'Prefers hot places. The flame on its tail shows its vitality.';

  @override
  String get pokemonDescriptionCharmeleon => 'Its tail burns brighter as it gains strength.';

  @override
  String get pokemonDescriptionCharizard => 'Breathes fire hot enough to melt rocks.';

  @override
  String get pokemonDescriptionSquirtle => 'Hides in its shell and sprays water at high pressure.';

  @override
  String get pokemonDescriptionWartortle => 'Its hard shell protects it from enemy attacks.';

  @override
  String get pokemonDescriptionBlastoise => 'Its cannons can blast water with great force.';

  @override
  String get pokemonCategoryBee => 'Bee Pokémon';

  @override
  String get pokemonCategoryTinyBird => 'Tiny Bird Pokémon';

  @override
  String get pokemonDescriptionCaterpie => 'It feeds on leaves and grows quickly.';

  @override
  String get pokemonDescriptionMetapod => 'Its body is hardened to protect itself while it evolves.';

  @override
  String get pokemonDescriptionButterfree => 'Its powdery wings release paralyzing spores.';

  @override
  String get pokemonDescriptionWeedle => 'Leaves a trail of silk to protect itself from predators.';

  @override
  String get pokemonDescriptionKakuna => 'Its tough skin protects it while evolving.';

  @override
  String get pokemonDescriptionBeedrill => 'Attacks in groups with its sharp stingers.';

  @override
  String get pokemonDescriptionPidgey => 'A common Pokémon that flies in small flocks.';

  @override
  String get pokemonDescriptionPidgeotto => 'Patrols large territories in search of food.';

  @override
  String get pokemonDescriptionPidgeot => 'Can create strong gusts of wind with its wings.';

  @override
  String get pokemonDescriptionRattata => 'Its fangs grow constantly, so it gnaws to wear them down.';

  @override
  String get pokemonDescriptionRaticate => 'Moves quickly to escape predators.';

  @override
  String get pokemonDescriptionUnknown => 'A mysterious Pokémon with no description yet.';

  @override
  String get errorsNoDetailTitle => 'Coming soon!';

  @override
  String get errorsNoDetailMessage => 'We’re working to bring you this section.\nCome back later to discover all the new features.';

  @override
  String get errorsNoFavoritesTitle => 'You haven’t marked any Pokémon as favorite';

  @override
  String get errorsNoFavoritesMessage => 'Click on the heart icon of your favorite Pokémon and they will appear here.';

  @override
  String get errorsNoPokemonsTitle => 'Something went wrong...';

  @override
  String get errorsNoPokemonsMessage => 'We couldn’t load the information right now.\nCheck your connection or try again later.';

  @override
  String get errorsRetry => 'Retry';
}
