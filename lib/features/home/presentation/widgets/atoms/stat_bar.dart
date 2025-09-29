part of co.com.poke.home;

class StatBar extends StatelessWidget {
  const StatBar({
    super.key,
    required this.pokemon,
  });

  final PokemonDetailModel pokemon;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: pokemon.maleRate / 100,
      minHeight: 10,
      backgroundColor: Colors.pink.shade200,
      color: const Color.fromARGB(255, 33, 114, 180),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
