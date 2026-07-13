import 'package:flutter/material.dart';


class LevelPage extends StatelessWidget {
  final String title;    // e.g., "BEGINNER"
  final String levelKey; // beginner | intermediate | advanced
  const LevelPage({super.key, required this.title, required this.levelKey});

  @override
  Widget build(BuildContext context) {
    final poses = _poseData[levelKey]!;
    return Scaffold(
      backgroundColor: const Color(0xFFFCF3E7), // light cream, like cards screen
      body: SafeArea(
        child: Column(
          children: [
            // Cream pages don't need settings gear
            const SizedBox(height: 12),
            Text(title,
                style: const TextStyle(
                    fontSize: 28, fontWeight: FontWeight.w800, color: Color(0xFF5B3A26))),
            const SizedBox(height: 8),
            const Text("Simple yoga pose sets",
                style: TextStyle(color: Colors.black54)),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: poses.length,
                itemBuilder: (context, i) {
                  final p = poses[i];
                  return _PoseCard(
                    title: p['name']!,
                    meta: "${p['duration']} • ${p['benefit']} • ${p['level']}",
                    onStart: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PoseCard extends StatelessWidget {
  final String title;
  final String meta;
  final VoidCallback onStart;
  const _PoseCard({required this.title, required this.meta, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [BoxShadow(blurRadius: 8, color: Colors.black12, offset: Offset(0,4))],
      ),
      child: Row(
        children: [
          // Placeholder "image"
          Container(width: 56, height: 56, decoration: BoxDecoration(
            color: const Color(0xFFEED7C6), borderRadius: BorderRadius.circular(10))),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                const SizedBox(height: 4),
                Text(meta, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),
          TextButton(onPressed: onStart, child: const Text("Start"))
        ],
      ),
    );
  }
}

// Demo data you can replace with real assets later
final Map<String, List<Map<String, String>>> _poseData = {
  'beginner': [
    {'name': 'Downward Dog', 'duration': '5 min', 'benefit': 'Stretch spine', 'level': 'Easy'},
    {'name': 'Child\'s Pose', 'duration': '5 min', 'benefit': 'Relax mind', 'level': 'Easy'},
    {'name': 'Cobra Pose', 'duration': '5 min', 'benefit': 'Energize back', 'level': 'Easy'},
    {'name': 'Bridge Pose', 'duration': '5 min', 'benefit': 'Core strength', 'level': 'Easy'},
  ],
  'intermediate': [
    {'name': 'Boat Pose', 'duration': '6 min', 'benefit': 'Core', 'level': 'Medium'},
    {'name': 'Camel Pose', 'duration': '6 min', 'benefit': 'Back bend', 'level': 'Medium'},
    {'name': 'Eagle Pose', 'duration': '6 min', 'benefit': 'Balance', 'level': 'Medium'},
    {'name': 'Headstand', 'duration': '6 min', 'benefit': 'Focus', 'level': 'Medium'},
  ],
  'advanced': [
    {'name': 'Crow Pose', 'duration': '8 min', 'benefit': 'Arms', 'level': 'Advanced'},
    {'name': 'Eka Pada Koundinyasana', 'duration': '8 min', 'benefit': 'Balance', 'level': 'Advanced'},
    {'name': 'King Dancer Pose', 'duration': '8 min', 'benefit': 'Flexibility', 'level': 'Advanced'},
    {'name': 'Eagle Pose', 'duration': '8 min', 'benefit': 'Advanced balance', 'level': 'Advanced'},
  ],
};
