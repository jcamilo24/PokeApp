part of co.com.poke.home;

class PokemonsFavorites extends ConsumerWidget {
  const PokemonsFavorites({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final homeViewModel = ref.read(homeProvider.notifier);

    final favorites =
        state.pokemons.where((p) => state.favorites.contains(p.id)).toList();

    if (favorites.isEmpty) {
      return const Center(
        child: NoFavorites(),
      );
    }

    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final pokemon = favorites[index];
        return Dismissible(
          key: ValueKey(pokemon.id),
          direction: DismissDirection.endToStart,
          background: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            padding: const EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(32),
            ),
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/error/delete.png',
              color: Colors.white,
            ),
          ),
          onDismissed: (_) {
            homeViewModel.removeFavorite(pokemon.id);
          },
          child: PokemonCard(
            number: "N°${pokemon.id.toString().padLeft(3, '0')}",
            name: pokemon.name,
            types: pokemon.types,
            imageUrl: pokemon.imageUrl,
            isFavorite: true,
            onFavoriteToggle: () {},
          ),
        );
      },
    );
  }
}
