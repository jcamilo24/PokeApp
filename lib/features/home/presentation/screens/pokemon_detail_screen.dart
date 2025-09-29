part of co.com.poke.home;

class PokemosDetailScreen extends ConsumerWidget {
  final PokemonDetailModel pokemon;

  const PokemosDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    // usamos la key del primer tipo para el estilo del header
    final primaryTypeKey =
        pokemon.types.isNotEmpty ? pokemon.types.first : "pokemonTypeNormal";
    final primaryTypeBase = PokemonCard._baseType(primaryTypeKey);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 👉 Encabezado con fondo del tipo
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: _backgroundColorContainer(primaryTypeBase),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Icon(
                      _iconForType(primaryTypeBase),
                      size: 200,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 12,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: Consumer(
                      builder: (context, ref, _) {
                        final state = ref.watch(homeProvider);
                        final homeViewModel = ref.read(homeProvider.notifier);
                        final isFavorite = state.favorites.contains(pokemon.id);
                        return GestureDetector(
                          onTap: () {
                            if (!isFavorite) {
                              homeViewModel.addFavorite(pokemon.id);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.6),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color:
                                  isFavorite ? Colors.redAccent : Colors.white,
                              size: 28,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: -80,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.network(
                        pokemon.imageUrl,
                        height: 200,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                          Icons.image_not_supported,
                          size: 100,
                          color: Colors.white30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            // 👉 Nombre + número
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "N°${pokemon.id.toString().padLeft(3, '0')}",
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(height: 12),
                  // 👉 Chips de tipos (traducidos)
                  Wrap(
                    spacing: 8,
                    children: pokemon.types
                        .map((t) => _TypeChip(
                            label: PokemonCard._translateTypeKey(t, l10n)))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  // 👉 Descripción
                  Text(
                    pokemon.description(l10n),
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  // 👉 Stats principales
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _InfoCard(
                        title: l10n.pokemonDetailWeight,
                        value: "${pokemon.weight} kg",
                        image: 'Vector.png',
                      ),
                      _InfoCard(
                        title: l10n.pokemonDetailHeight,
                        value: "${pokemon.height} m",
                        image: 'height.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _InfoCard(
                        title: l10n.pokemonDetailCategory,
                        value: pokemon.category(l10n),
                        image: 'category.png',
                      ),
                      _InfoCard(
                        title: l10n.pokemonDetailAbility,
                        value: pokemon.abilities.isNotEmpty
                            ? pokemon.abilities.first
                            : "-",
                        image: 'ability.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      l10n.pokemonDetailGender,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: StatBar(pokemon: pokemon),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("♂ ${pokemon.maleRate}%",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                        Text("♀ ${pokemon.femaleRate}%",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // 👉 Debilidades (traducidas)
                  Text(
                    l10n.pokemonDetailWeaknesses,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: pokemon.weaknesses
                        .map((w) => _TypeChip(
                            label: PokemonCard._translateTypeKey(w, l10n)))
                        .toList(),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
