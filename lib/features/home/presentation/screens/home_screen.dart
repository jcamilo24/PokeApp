part of co.com.poke.home;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  final screens = const [
    PokemonList(),
    Center(child: NoDetail()),
    PokemonsFavorites(),
    Center(child: NoDetail()),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final homeViewModel = ref.read(homeProvider.notifier);

    return Scaffold(
      body: screens[state.currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: NavigationBar(
          height: 65,
          elevation: 3,
          backgroundColor: Colors.white,
          indicatorColor: Colors.transparent,
          selectedIndex: state.currentIndex,
          onDestinationSelected: (index) {
            homeViewModel.setIndex(index);
          },
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/home/house.svg',
                color: Colors.black54,
                width: 28,
                height: 28,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/home/house.svg',
                color: const Color(0xFF0D47A1),
                width: 28,
                height: 28,
              ),
              label: AppLocalizations.of(context)!.navigationPokedex,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/home/globe.svg',
                color: Colors.black54,
                width: 28,
                height: 28,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/home/globe.svg',
                color: const Color(0xFF0D47A1),
                width: 28,
                height: 28,
              ),
              label: AppLocalizations.of(context)!.navigationRegions,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/home/heart.svg',
                color: Colors.black54,
                width: 28,
                height: 28,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/home/heart.svg',
                color: const Color(0xFF0D47A1),
                width: 28,
                height: 28,
              ),
              label: AppLocalizations.of(context)!.navigationFavorites,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/home/user.svg',
                color: Colors.black54,
                width: 28,
                height: 28,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/home/user.svg',
                color: const Color(0xFF0D47A1),
                width: 28,
                height: 28,
              ),
              label: AppLocalizations.of(context)!.navigationProfile,
            ),
          ],
        ),
      ),
    );
  }
}
