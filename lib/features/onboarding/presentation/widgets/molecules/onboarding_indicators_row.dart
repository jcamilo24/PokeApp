part of co.com.poke.onboarding;

class OnboardingIndicatorsRow extends StatelessWidget {
  final int totalPages;
  final int currentIndex;

  const OnboardingIndicatorsRow({
    super.key,
    required this.totalPages,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (i) => OnboardingIndicator(isActive: currentIndex == i),
      ),
    );
  }
}
