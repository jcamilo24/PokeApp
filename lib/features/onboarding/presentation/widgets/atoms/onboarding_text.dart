part of co.com.poke.onboarding;

class OnboardingText extends StatelessWidget {
  final String text;
  final bool isTitle;

  const OnboardingText({
    super.key,
    required this.text,
    this.isTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: isTitle ? 24 : 16,
        fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
        color: Colors.black,
        fontFamily: 'Quicksand',
      ),
    );
  }
}
