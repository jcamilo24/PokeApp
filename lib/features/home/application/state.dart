part of co.com.poke.home;

class HomeState {
  final bool isLoading;
  final List<PokemonDetailModel> pokemons;
  final String? error;
  final int currentIndex;
  final Set<int> favorites;
  final String searchQuery;
  final Set<String> selectedTypes;

  HomeState({
    required this.isLoading,
    required this.pokemons,
    this.error,
    required this.currentIndex,
    required this.favorites,
    required this.searchQuery,
    required this.selectedTypes,
  });

  factory HomeState.initial() => HomeState(
        isLoading: false,
        pokemons: [],
        currentIndex: 0,
        favorites: {}, // vacío al inicio
        searchQuery: "",
        selectedTypes: {},
      );

  HomeState copyWith({
    bool? isLoading,
    List<PokemonDetailModel>? pokemons,
    String? error,
    int? currentIndex,
    Set<int>? favorites,
    String? searchQuery,
    Set<String>? selectedTypes,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      pokemons: pokemons ?? this.pokemons,
      error: error ?? this.error,
      currentIndex: currentIndex ?? this.currentIndex,
      favorites: favorites ?? this.favorites,
      searchQuery: searchQuery ?? this.searchQuery,
      selectedTypes: selectedTypes ?? this.selectedTypes,
    );
  }
}
