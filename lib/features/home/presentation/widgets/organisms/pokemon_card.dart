part of co.com.poke.home;

class PokemonCard extends StatelessWidget {
  final String number;
  final String name;
  final List<String> types;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const PokemonCard({
    super.key,
    required this.number,
    required this.name,
    required this.types,
    required this.imageUrl,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final primaryTypeKey = types.isNotEmpty ? types.first : "pokemonTypeNormal";
    final primaryTypeBase = _baseType(primaryTypeKey);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: _backgroundColor(primaryTypeBase),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: types
                      .map((t) => _TypeChip(label: _translateTypeKey(t, l10n)))
                      .toList(),
                ),
              ],
            ),
          ),
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
                color: _backgroundColorContainer(primaryTypeBase),
                borderRadius: const BorderRadius.all(Radius.circular(32))),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    _iconForType(primaryTypeBase),
                    size: 150,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Center(
                  child: Image.network(
                    imageUrl,
                    height: 90,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.image_not_supported,
                      size: 50,
                      color: Colors.white30,
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 11,
                  child: GestureDetector(
                    onTap: onFavoriteToggle,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.6),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.redAccent : Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static String _translateTypeKey(String key, AppLocalizations l10n) {
    switch (key) {
      case "pokemonTypeGrass":
        return l10n.pokemonTypeGrass;
      case "pokemonTypePoison":
        return l10n.pokemonTypePoison;
      case "pokemonTypeFire":
        return l10n.pokemonTypeFire;
      case "pokemonTypeWater":
        return l10n.pokemonTypeWater;
      case "pokemonTypeElectric":
        return l10n.pokemonTypeElectric;
      case "pokemonTypeBug":
        return l10n.pokemonTypeBug;
      case "pokemonTypeFlying":
        return l10n.pokemonTypeFlying;
      case "pokemonTypeNormal":
        return l10n.pokemonTypeNormal;
      default:
        return key;
    }
  }

  static String _baseType(String key) {
    return key.replaceFirst("pokemonType", "").toLowerCase();
  }
}

Color _backgroundColor(String type) {
  switch (type) {
    case "grass":
      return Colors.green.shade200;
    case "fire":
      return Colors.orange.shade200;
    case "water":
      return const Color.fromARGB(255, 50, 136, 207);
    case "bug":
      return Colors.yellow.shade200;
    case "normal":
      return Colors.blue.shade200;
    default:
      return Colors.grey.shade200;
  }
}

Color _backgroundColorContainer(String type) {
  switch (type) {
    case "grass":
      return Colors.green;
    case "fire":
      return Colors.orange;
    case "water":
      return const Color.fromARGB(255, 7, 93, 163);
    case "bug":
      return Colors.yellow;
    case "normal":
      return Colors.blue;
    default:
      return Colors.grey;
  }
}

IconData _iconForType(String type) {
  switch (type) {
    case "grass":
      return Icons.eco;
    case "poison":
      return Icons.bug_report;
    case "fire":
      return Icons.local_fire_department;
    case "water":
      return Icons.water_drop;
    case "electric":
      return Icons.flash_on;
    case "flying":
      return Icons.air;
    default:
      return Icons.help_outline;
  }
}
