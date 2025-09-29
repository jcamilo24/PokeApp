part of co.com.poke.home;

class _FilterBottomSheet extends ConsumerWidget {
  final ScrollController? scrollController;
  const _FilterBottomSheet({super.key, this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final homeViewModel = ref.read(homeProvider.notifier);
    final l10n = AppLocalizations.of(context)!;
    final allTypes = [
      "pokemonTypeWater",
      "pokemonTypeFire",
      "pokemonTypeGrass",
      "pokemonTypePoison",
      "pokemonTypeFlying",
      "pokemonTypeDragon",
      "pokemonTypeElectric",
      "pokemonTypeFairy",
      "pokemonTypeGhost",
      "pokemonTypeNormal",
      "pokemonTypeBug",
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                homeViewModel.clearFilters();
                Navigator.pop(context);
              },
            ),
            Center(
              child: Text(
                l10n.filtersTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              l10n.filtersType,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: allTypes.length,
                itemBuilder: (_, index) {
                  final typeKey = allTypes[index];
                  final translated =
                      PokemonCard._translateTypeKey(typeKey, l10n);
                  final selected = state.selectedTypes.contains(typeKey);

                  return CheckboxListTile(
                    value: selected,
                    title: Text(translated),
                    onChanged: (_) => homeViewModel.toggleType(typeKey),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      l10n.filtersApply,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      side: const BorderSide(color: Colors.transparent),
                      backgroundColor: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      homeViewModel.clearFilters();
                      Navigator.pop(context);
                    },
                    child: Text(
                      l10n.filtersCancel,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
