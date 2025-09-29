part of co.com.poke.error_pages;

class NoPokemos extends ConsumerWidget {
  const NoPokemos({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.read(homeProvider.notifier);
    final loc = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/error/magikarp.png',
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 20),
        Text(
          loc.errorsNoPokemonsTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          loc.errorsNoPokemonsMessage,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 25),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          ),
          onPressed: () {
            homeViewModel.loadPokemons();
          },
          child: Text(
            loc.errorsRetry,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
