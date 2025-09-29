part of co.com.poke.onboarding;

class OnboardingViewModel extends StateNotifier<OnboardingState> {
  OnboardingViewModel(this.ref) : super(OnboardingState.initial());

  final StateNotifierProviderRef<OnboardingViewModel, OnboardingState> ref;

  void setPageIndex(int index) {
    state = state.copyWith(pageIndex: index);
  }

  void nextPage(PageController controller, BuildContext context) {
    if (state.pageIndex < 1) {
      controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      goToHome(context);
    }
  }

  void goToHome(BuildContext context) {
    ref.read(homeProvider.notifier).loadPokemons();
    context.go('/home');
  }
}
