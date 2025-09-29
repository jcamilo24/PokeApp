part of co.com.poke.onboarding;

class OnboardingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const OnboardingButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: const Color.fromARGB(255, 7, 128, 226),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Quicksand',
        ),
      ),
    );
  }
}
