part of co.com.poke.home;

class PokemonList extends ConsumerWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.read(homeProvider.notifier);
    final state = ref.watch(homeProvider);

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return const Center(child: NoPokemos());
    }

    if (state.pokemons.isEmpty) {
      return const Center(child: NoPokemos());
    }

    final pokemons = homeViewModel.filteredPokemons;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SearchBar(homeViewModel: homeViewModel),
                if (state.selectedTypes.isNotEmpty ||
                    state.searchQuery.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                  text: AppLocalizations.of(context)!
                                      .filtersfound),
                              TextSpan(
                                text:
                                    " ${pokemons.length} ${AppLocalizations.of(context)!.filtersResultsFound}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: homeViewModel.clearFilters,
                          child: Text(
                            AppLocalizations.of(context)!.filtersClear,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: pokemons.isEmpty
                      ? Center(
                          child: Text(
                            AppLocalizations.of(context)!.filtersNoResults,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: pokemons.length,
                          itemBuilder: (context, index) {
                            final pokemon = pokemons[index];
                            final isFavorite =
                                state.favorites.contains(pokemon.id);
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => PokemosDetailScreen(
                                      pokemon: pokemon,
                                    ),
                                  ),
                                );
                              },
                              child: PokemonCard(
                                number:
                                    "N°${pokemon.id.toString().padLeft(3, '0')}",
                                name: pokemon.name,
                                types: pokemon.types,
                                imageUrl: pokemon.imageUrl,
                                isFavorite: isFavorite,
                                onFavoriteToggle: () {
                                  if (!isFavorite) {
                                    homeViewModel.addFavorite(pokemon.id);
                                  }
                                },
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
            const FilterTypes(),
          ],
        ),
      ),
    );
  }
}
