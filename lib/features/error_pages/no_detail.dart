part of co.com.poke.error_pages;

class NoDetail extends ConsumerWidget {
  const NoDetail({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/error/magikarp2.png',
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 20),
        Text(
          loc.errorsNoDetailTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          loc.errorsNoDetailMessage,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
