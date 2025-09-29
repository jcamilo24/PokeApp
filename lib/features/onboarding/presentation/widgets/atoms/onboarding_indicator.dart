part of co.com.poke.onboarding;

class OnboardingIndicator extends StatelessWidget {
  final bool isActive;

  const OnboardingIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromARGB(255, 8, 108, 190)
            : const Color(0xFFCBD4E1),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
