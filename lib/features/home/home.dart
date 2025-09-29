library co.com.poke.home;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokeapp/features/error_pages/error_pages.dart';
import 'package:pokeapp/l10n/app_localizations.dart';

part 'presentation/screens/home_screen.dart';
part 'application/provider.dart';
part 'application/state.dart';
part 'application/viewmodel.dart';
part 'domain/entities/pokemon_model.dart';
part 'data/models/pokemon_detail_model.dart';
part 'data/repositories/pokemon_repository.dart';
part 'presentation/widgets/organisms/pokemos_list.dart';
part 'presentation/widgets/atoms/type_chip.dart';
part 'presentation/widgets/organisms/pokemon_card.dart';
part 'presentation/widgets/organisms/favorites.dart';
part 'presentation/screens/pokemon_detail_screen.dart';
part 'presentation/widgets/molecules/info_card.dart';
part 'presentation/widgets/molecules/filter_types.dart';
part 'presentation/widgets/atoms/stat_bar.dart';
part 'presentation/widgets/molecules/search_bar.dart';
part 'presentation/widgets/molecules/filter.dart';
