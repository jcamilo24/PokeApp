part of co.com.poke.onboarding;

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final int pageIndex;
  final int currentIndex;
  final int totalPages;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.pageIndex,
    required this.currentIndex,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/onboarding/$imagePath', height: 400),
            OnboardingText(text: title, isTitle: true),
            const SizedBox(height: 16),
            OnboardingText(text: description),
            const SizedBox(height: 24),
            OnboardingIndicatorsRow(
              totalPages: totalPages,
              currentIndex: currentIndex,
            ),
          ],
        ),
      ),
    );
  }
}
