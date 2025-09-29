part of co.com.poke.home;

class FilterTypes extends StatelessWidget {
  const FilterTypes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: FloatingActionButton(
        backgroundColor: const Color(0xFF0D47A1),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // 👈 importante
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (_) {
              return DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.8,
                minChildSize: 0.5,
                maxChildSize: 0.95,
                builder: (_, controller) {
                  return _FilterBottomSheet(scrollController: controller);
                },
              );
            },
          );
        },
        child: const Icon(
          Icons.filter_list,
          color: Colors.white,
        ),
      ),
    );
  }
}
