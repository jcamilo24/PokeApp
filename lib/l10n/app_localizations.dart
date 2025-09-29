import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello!'**
  String get hello;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to PokeApp'**
  String get welcome;

  /// No description provided for @onboardingPage1Title.
  ///
  /// In en, this message translates to:
  /// **'All Pokémon in one place'**
  String get onboardingPage1Title;

  /// No description provided for @onboardingPage1Description.
  ///
  /// In en, this message translates to:
  /// **'Access a wide list of Pokémon from all generations created by Nintendo'**
  String get onboardingPage1Description;

  /// No description provided for @onboardingPage2Title.
  ///
  /// In en, this message translates to:
  /// **'Keep your Pokédex updated'**
  String get onboardingPage2Title;

  /// No description provided for @onboardingPage2Description.
  ///
  /// In en, this message translates to:
  /// **'Register and save your profile, favorite Pokémon, settings, and much more in the app'**
  String get onboardingPage2Description;

  /// No description provided for @onboardingContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// No description provided for @onboardingStart.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start'**
  String get onboardingStart;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Pokédex'**
  String get homeTitle;

  /// No description provided for @homeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore and manage your favorite Pokémon'**
  String get homeSubtitle;

  /// No description provided for @navigationPokedex.
  ///
  /// In en, this message translates to:
  /// **'Pokédex'**
  String get navigationPokedex;

  /// No description provided for @navigationRegions.
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get navigationRegions;

  /// No description provided for @navigationFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get navigationFavorites;

  /// No description provided for @navigationProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navigationProfile;

  /// No description provided for @pokemonDetailWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get pokemonDetailWeight;

  /// No description provided for @pokemonDetailHeight.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get pokemonDetailHeight;

  /// No description provided for @pokemonDetailCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get pokemonDetailCategory;

  /// No description provided for @pokemonDetailAbility.
  ///
  /// In en, this message translates to:
  /// **'Ability'**
  String get pokemonDetailAbility;

  /// No description provided for @pokemonDetailGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get pokemonDetailGender;

  /// No description provided for @pokemonDetailMale.
  ///
  /// In en, this message translates to:
  /// **'♂ {value}%'**
  String pokemonDetailMale(Object value);

  /// No description provided for @pokemonDetailFemale.
  ///
  /// In en, this message translates to:
  /// **'♀ {value}%'**
  String pokemonDetailFemale(Object value);

  /// No description provided for @pokemonDetailWeaknesses.
  ///
  /// In en, this message translates to:
  /// **'Weaknesses'**
  String get pokemonDetailWeaknesses;

  /// No description provided for @filtersTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter by your preferences'**
  String get filtersTitle;

  /// No description provided for @filtersType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get filtersType;

  /// No description provided for @filtersApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get filtersApply;

  /// No description provided for @filtersCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get filtersCancel;

  /// No description provided for @filtersClear.
  ///
  /// In en, this message translates to:
  /// **'Clear filter'**
  String get filtersClear;

  /// No description provided for @filtersfound.
  ///
  /// In en, this message translates to:
  /// **'They have been found'**
  String get filtersfound;

  /// No description provided for @filtersResultsFound.
  ///
  /// In en, this message translates to:
  /// **'results'**
  String get filtersResultsFound;

  /// No description provided for @filtersNoResults.
  ///
  /// In en, this message translates to:
  /// **'No Pokémon of that type'**
  String get filtersNoResults;

  /// No description provided for @favoritesEmpty.
  ///
  /// In en, this message translates to:
  /// **'You don’t have favorite Pokémon yet'**
  String get favoritesEmpty;

  /// No description provided for @errorsNoPokemons.
  ///
  /// In en, this message translates to:
  /// **'No Pokémon available'**
  String get errorsNoPokemons;

  /// No description provided for @errorsLoading.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while loading Pokémon'**
  String get errorsLoading;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search Pokémon...'**
  String get searchHint;

  /// No description provided for @pokemonTypeGrass.
  ///
  /// In en, this message translates to:
  /// **'Grass'**
  String get pokemonTypeGrass;

  /// No description provided for @pokemonTypePoison.
  ///
  /// In en, this message translates to:
  /// **'Poison'**
  String get pokemonTypePoison;

  /// No description provided for @pokemonTypeFire.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get pokemonTypeFire;

  /// No description provided for @pokemonTypeWater.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get pokemonTypeWater;

  /// No description provided for @pokemonTypeElectric.
  ///
  /// In en, this message translates to:
  /// **'Electric'**
  String get pokemonTypeElectric;

  /// No description provided for @pokemonTypeBug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get pokemonTypeBug;

  /// No description provided for @pokemonTypeFlying.
  ///
  /// In en, this message translates to:
  /// **'Flying'**
  String get pokemonTypeFlying;

  /// No description provided for @pokemonTypeNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get pokemonTypeNormal;

  /// No description provided for @pokemonTypeRock.
  ///
  /// In en, this message translates to:
  /// **'Rock'**
  String get pokemonTypeRock;

  /// No description provided for @pokemonTypePsychic.
  ///
  /// In en, this message translates to:
  /// **'Psychic'**
  String get pokemonTypePsychic;

  /// No description provided for @pokemonTypeGround.
  ///
  /// In en, this message translates to:
  /// **'Ground'**
  String get pokemonTypeGround;

  /// No description provided for @pokemonTypeIce.
  ///
  /// In en, this message translates to:
  /// **'Ice'**
  String get pokemonTypeIce;

  /// No description provided for @pokemonTypeDragon.
  ///
  /// In en, this message translates to:
  /// **'Dragon'**
  String get pokemonTypeDragon;

  /// No description provided for @pokemonTypeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get pokemonTypeDark;

  /// No description provided for @pokemonTypeFairy.
  ///
  /// In en, this message translates to:
  /// **'Fairy'**
  String get pokemonTypeFairy;

  /// No description provided for @pokemonTypeSteel.
  ///
  /// In en, this message translates to:
  /// **'Steel'**
  String get pokemonTypeSteel;

  /// No description provided for @pokemonTypeGhost.
  ///
  /// In en, this message translates to:
  /// **'Ghost'**
  String get pokemonTypeGhost;

  /// No description provided for @pokemonTypeFighting.
  ///
  /// In en, this message translates to:
  /// **'Fighting'**
  String get pokemonTypeFighting;

  /// No description provided for @pokemonAbilityOvergrow.
  ///
  /// In en, this message translates to:
  /// **'Overgrow'**
  String get pokemonAbilityOvergrow;

  /// No description provided for @pokemonAbilityChlorophyll.
  ///
  /// In en, this message translates to:
  /// **'Chlorophyll'**
  String get pokemonAbilityChlorophyll;

  /// No description provided for @pokemonAbilityBlaze.
  ///
  /// In en, this message translates to:
  /// **'Blaze'**
  String get pokemonAbilityBlaze;

  /// No description provided for @pokemonAbilitySolarPower.
  ///
  /// In en, this message translates to:
  /// **'Solar Power'**
  String get pokemonAbilitySolarPower;

  /// No description provided for @pokemonAbilityTorrent.
  ///
  /// In en, this message translates to:
  /// **'Torrent'**
  String get pokemonAbilityTorrent;

  /// No description provided for @pokemonAbilityShieldDust.
  ///
  /// In en, this message translates to:
  /// **'Shield Dust'**
  String get pokemonAbilityShieldDust;

  /// No description provided for @pokemonAbilityShedSkin.
  ///
  /// In en, this message translates to:
  /// **'Shed Skin'**
  String get pokemonAbilityShedSkin;

  /// No description provided for @pokemonAbilityCompoundEyes.
  ///
  /// In en, this message translates to:
  /// **'Compound Eyes'**
  String get pokemonAbilityCompoundEyes;

  /// No description provided for @pokemonAbilitySwarm.
  ///
  /// In en, this message translates to:
  /// **'Swarm'**
  String get pokemonAbilitySwarm;

  /// No description provided for @pokemonAbilityKeenEye.
  ///
  /// In en, this message translates to:
  /// **'Keen Eye'**
  String get pokemonAbilityKeenEye;

  /// No description provided for @pokemonAbilityTangledFeet.
  ///
  /// In en, this message translates to:
  /// **'Tangled Feet'**
  String get pokemonAbilityTangledFeet;

  /// No description provided for @pokemonAbilityRunAway.
  ///
  /// In en, this message translates to:
  /// **'Run Away'**
  String get pokemonAbilityRunAway;

  /// No description provided for @pokemonCategorySeed.
  ///
  /// In en, this message translates to:
  /// **'Seed Pokémon'**
  String get pokemonCategorySeed;

  /// No description provided for @pokemonCategoryLizard.
  ///
  /// In en, this message translates to:
  /// **'Lizard Pokémon'**
  String get pokemonCategoryLizard;

  /// No description provided for @pokemonCategoryFlame.
  ///
  /// In en, this message translates to:
  /// **'Flame Pokémon'**
  String get pokemonCategoryFlame;

  /// No description provided for @pokemonCategoryTinyTurtle.
  ///
  /// In en, this message translates to:
  /// **'Tiny Turtle Pokémon'**
  String get pokemonCategoryTinyTurtle;

  /// No description provided for @pokemonCategoryTurtle.
  ///
  /// In en, this message translates to:
  /// **'Turtle Pokémon'**
  String get pokemonCategoryTurtle;

  /// No description provided for @pokemonCategoryShellfish.
  ///
  /// In en, this message translates to:
  /// **'Shellfish Pokémon'**
  String get pokemonCategoryShellfish;

  /// No description provided for @pokemonCategoryWorm.
  ///
  /// In en, this message translates to:
  /// **'Worm Pokémon'**
  String get pokemonCategoryWorm;

  /// No description provided for @pokemonCategoryCocoon.
  ///
  /// In en, this message translates to:
  /// **'Cocoon Pokémon'**
  String get pokemonCategoryCocoon;

  /// No description provided for @pokemonCategoryButterfly.
  ///
  /// In en, this message translates to:
  /// **'Butterfly Pokémon'**
  String get pokemonCategoryButterfly;

  /// No description provided for @pokemonCategoryBird.
  ///
  /// In en, this message translates to:
  /// **'Bird Pokémon'**
  String get pokemonCategoryBird;

  /// No description provided for @pokemonCategoryMouse.
  ///
  /// In en, this message translates to:
  /// **'Mouse Pokémon'**
  String get pokemonCategoryMouse;

  /// No description provided for @pokemonDescriptionBulbasaur.
  ///
  /// In en, this message translates to:
  /// **'A plant Pokémon that grows with a seed on its back.'**
  String get pokemonDescriptionBulbasaur;

  /// No description provided for @pokemonDescriptionIvysaur.
  ///
  /// In en, this message translates to:
  /// **'Its bulb grows with age, releasing solar energy.'**
  String get pokemonDescriptionIvysaur;

  /// No description provided for @pokemonDescriptionVenusaur.
  ///
  /// In en, this message translates to:
  /// **'The flower on its back blooms when absorbing solar energy.'**
  String get pokemonDescriptionVenusaur;

  /// No description provided for @pokemonDescriptionCharmander.
  ///
  /// In en, this message translates to:
  /// **'Prefers hot places. The flame on its tail shows its vitality.'**
  String get pokemonDescriptionCharmander;

  /// No description provided for @pokemonDescriptionCharmeleon.
  ///
  /// In en, this message translates to:
  /// **'Its tail burns brighter as it gains strength.'**
  String get pokemonDescriptionCharmeleon;

  /// No description provided for @pokemonDescriptionCharizard.
  ///
  /// In en, this message translates to:
  /// **'Breathes fire hot enough to melt rocks.'**
  String get pokemonDescriptionCharizard;

  /// No description provided for @pokemonDescriptionSquirtle.
  ///
  /// In en, this message translates to:
  /// **'Hides in its shell and sprays water at high pressure.'**
  String get pokemonDescriptionSquirtle;

  /// No description provided for @pokemonDescriptionWartortle.
  ///
  /// In en, this message translates to:
  /// **'Its hard shell protects it from enemy attacks.'**
  String get pokemonDescriptionWartortle;

  /// No description provided for @pokemonDescriptionBlastoise.
  ///
  /// In en, this message translates to:
  /// **'Its cannons can blast water with great force.'**
  String get pokemonDescriptionBlastoise;

  /// No description provided for @pokemonCategoryBee.
  ///
  /// In en, this message translates to:
  /// **'Bee Pokémon'**
  String get pokemonCategoryBee;

  /// No description provided for @pokemonCategoryTinyBird.
  ///
  /// In en, this message translates to:
  /// **'Tiny Bird Pokémon'**
  String get pokemonCategoryTinyBird;

  /// No description provided for @pokemonDescriptionCaterpie.
  ///
  /// In en, this message translates to:
  /// **'It feeds on leaves and grows quickly.'**
  String get pokemonDescriptionCaterpie;

  /// No description provided for @pokemonDescriptionMetapod.
  ///
  /// In en, this message translates to:
  /// **'Its body is hardened to protect itself while it evolves.'**
  String get pokemonDescriptionMetapod;

  /// No description provided for @pokemonDescriptionButterfree.
  ///
  /// In en, this message translates to:
  /// **'Its powdery wings release paralyzing spores.'**
  String get pokemonDescriptionButterfree;

  /// No description provided for @pokemonDescriptionWeedle.
  ///
  /// In en, this message translates to:
  /// **'Leaves a trail of silk to protect itself from predators.'**
  String get pokemonDescriptionWeedle;

  /// No description provided for @pokemonDescriptionKakuna.
  ///
  /// In en, this message translates to:
  /// **'Its tough skin protects it while evolving.'**
  String get pokemonDescriptionKakuna;

  /// No description provided for @pokemonDescriptionBeedrill.
  ///
  /// In en, this message translates to:
  /// **'Attacks in groups with its sharp stingers.'**
  String get pokemonDescriptionBeedrill;

  /// No description provided for @pokemonDescriptionPidgey.
  ///
  /// In en, this message translates to:
  /// **'A common Pokémon that flies in small flocks.'**
  String get pokemonDescriptionPidgey;

  /// No description provided for @pokemonDescriptionPidgeotto.
  ///
  /// In en, this message translates to:
  /// **'Patrols large territories in search of food.'**
  String get pokemonDescriptionPidgeotto;

  /// No description provided for @pokemonDescriptionPidgeot.
  ///
  /// In en, this message translates to:
  /// **'Can create strong gusts of wind with its wings.'**
  String get pokemonDescriptionPidgeot;

  /// No description provided for @pokemonDescriptionRattata.
  ///
  /// In en, this message translates to:
  /// **'Its fangs grow constantly, so it gnaws to wear them down.'**
  String get pokemonDescriptionRattata;

  /// No description provided for @pokemonDescriptionRaticate.
  ///
  /// In en, this message translates to:
  /// **'Moves quickly to escape predators.'**
  String get pokemonDescriptionRaticate;

  /// No description provided for @pokemonDescriptionUnknown.
  ///
  /// In en, this message translates to:
  /// **'A mysterious Pokémon with no description yet.'**
  String get pokemonDescriptionUnknown;

  /// No description provided for @errorsNoDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'Coming soon!'**
  String get errorsNoDetailTitle;

  /// No description provided for @errorsNoDetailMessage.
  ///
  /// In en, this message translates to:
  /// **'We’re working to bring you this section.\nCome back later to discover all the new features.'**
  String get errorsNoDetailMessage;

  /// No description provided for @errorsNoFavoritesTitle.
  ///
  /// In en, this message translates to:
  /// **'You haven’t marked any Pokémon as favorite'**
  String get errorsNoFavoritesTitle;

  /// No description provided for @errorsNoFavoritesMessage.
  ///
  /// In en, this message translates to:
  /// **'Click on the heart icon of your favorite Pokémon and they will appear here.'**
  String get errorsNoFavoritesMessage;

  /// No description provided for @errorsNoPokemonsTitle.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong...'**
  String get errorsNoPokemonsTitle;

  /// No description provided for @errorsNoPokemonsMessage.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t load the information right now.\nCheck your connection or try again later.'**
  String get errorsNoPokemonsMessage;

  /// No description provided for @errorsRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get errorsRetry;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
