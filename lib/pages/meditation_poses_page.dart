import 'package:flutter/material.dart';
import '../widgets/common.dart';

class MeditationPosesPage extends StatelessWidget {
  const MeditationPosesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final poses = ['Lotus', 'Half-Lotus', 'Burmese', 'Kneeling', 'Chair', 'Standing'];
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppHeader(title: 'FITNESS BUDDY'),
          const SizedBox(height: 12),
          const Center(
            child: Text("MEDITATION\nPOSES",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kBeige, fontSize: 26, fontWeight: FontWeight.w800)),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: poses.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 12, crossAxisSpacing: 12,
                ),
                itemBuilder: (_, i) => _poseTile(poses[i]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _poseTile(String title) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1D1D1D),
              borderRadius: BorderRadius.circular(12),
            ),
            // put your PNG/SVG pose here later
          ),
        ),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(color: kBeige)),
      ],
    );
  }
}
