part of co.com.poke.onboarding;

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingProvider);
    final viewModel = ref.read(onboardingProvider.notifier);

    final localizations = AppLocalizations.of(context)!;

    final pages = [
      OnboardingPage(
        imagePath: 'onboarding1.png',
        title: localizations.onboardingPage1Title,
        description: localizations.onboardingPage1Description,
        pageIndex: 0,
        currentIndex: state.pageIndex,
        totalPages: 2,
      ),
      OnboardingPage(
        imagePath: 'onboarding2.png',
        title: localizations.onboardingPage2Title,
        description: localizations.onboardingPage2Description,
        pageIndex: 1,
        currentIndex: state.pageIndex,
        totalPages: 2,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: viewModel.setPageIndex,
                children: pages,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: OnboardingButton(
                onPressed: () => viewModel.nextPage(_controller, context),
                label: state.pageIndex == 0
                    ? localizations.onboardingContinue
                    : localizations.onboardingStart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
