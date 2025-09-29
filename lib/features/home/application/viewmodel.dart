part of co.com.poke.home;

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel(this.ref) : super(HomeState.initial());

  final StateNotifierProviderRef<HomeViewModel, HomeState> ref;

  final PokemonRepository _repository = PokemonRepository();

  Future<void> loadPokemons() async {
    state = state.copyWith(isLoading: true, pokemons: []);
    try {
      final data = await _repository.fetchPokemons();
      final details = await Future.wait(
        data.map((e) => _repository.fetchPokemonDetail(e.url)),
      );

      state = state.copyWith(
        isLoading: false,
        pokemons: details,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        pokemons: [],
        error: e.toString(),
      );
    }
  }

  void setIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void addFavorite(int pokemonId) {
    final newFavorites = Set<int>.from(state.favorites);
    newFavorites.add(pokemonId);
    state = state.copyWith(favorites: newFavorites);
  }

  void removeFavorite(int pokemonId) {
    final newFavorites = Set<int>.from(state.favorites);
    newFavorites.remove(pokemonId);
    state = state.copyWith(favorites: newFavorites);
  }

  void updateSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void toggleType(String type) {
    final newTypes = Set<String>.from(state.selectedTypes);
    if (newTypes.contains(type)) {
      newTypes.remove(type);
    } else {
      newTypes.add(type);
    }
    state = state.copyWith(selectedTypes: newTypes);
  }

  void clearFilters() {
    state = state.copyWith(searchQuery: "", selectedTypes: {});
  }

  List<PokemonDetailModel> get filteredPokemons {
    return state.pokemons.where((p) {
      final matchName =
          p.name.toLowerCase().contains(state.searchQuery.toLowerCase());
      final matchTypes = state.selectedTypes.isEmpty ||
          p.types.any((t) => state.selectedTypes.contains(t));
      return matchName && matchTypes;
    }).toList();
  }
}
