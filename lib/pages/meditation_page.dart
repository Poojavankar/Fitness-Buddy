import 'package:flutter/material.dart';
import '../widgets/common.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppHeader(title: 'MEDITATION'),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                PrimaryButton(
                  label: 'EASY POSE',
                  onTap: () => Navigator.pushNamed(context, '/meditation-poses'),
                ),
                const SizedBox(height: 16),
                PrimaryButton(
                  label: 'MEDITATION AUDIO',
                  onTap: () => Navigator.pushNamed(context, '/meditation-audio'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
