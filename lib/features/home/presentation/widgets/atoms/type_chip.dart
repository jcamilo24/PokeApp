part of co.com.poke.home;

class _TypeChip extends StatelessWidget {
  final String label;
  const _TypeChip({required this.label});

  @override
  Widget build(BuildContext context) {
    final color = _chipColor(label);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color["bg"],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(color["icon"], size: 16, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Map<String, dynamic> _chipColor(String type) {
    switch (type.toLowerCase()) {
      case "grass":
      case "planta":
        return {"bg": Colors.green, "icon": Icons.eco};
      case "poison":
      case "veneno":
        return {"bg": Colors.purple, "icon": Icons.bug_report};
      case "fire":
      case "fuego":
        return {"bg": Colors.orange, "icon": Icons.local_fire_department};
      case "water":
      case "agua":
        return {"bg": Colors.blue, "icon": Icons.water_drop};
      case "electric":
      case "eléctrico":
        return {"bg": Colors.amber, "icon": Icons.flash_on};
      case "flying":
      case "volador":
        return {"bg": Colors.lightBlue, "icon": Icons.air};
      default:
        return {"bg": Colors.grey, "icon": Icons.help_outline};
    }
  }
}
