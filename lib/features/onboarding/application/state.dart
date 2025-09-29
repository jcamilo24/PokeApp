part of co.com.poke.onboarding;

class OnboardingState {
  final int pageIndex;

  OnboardingState({
    required this.pageIndex,
  });

  factory OnboardingState.initial() => OnboardingState(
        pageIndex: 0,
      );

  OnboardingState copyWith({
    int? pageIndex,
  }) =>
      OnboardingState(
        pageIndex: pageIndex ?? this.pageIndex,
      );
}
