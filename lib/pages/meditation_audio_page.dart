import 'package:flutter/material.dart';
import '../widgets/common.dart';

class MeditationAudioPage extends StatelessWidget {
  const MeditationAudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppHeader(title: 'FITNESS BUDDY'),
          const SizedBox(height: 60),
          const Center(
            child: Text(
              "MEDITATION\nAUDIO",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kBeige,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                PrimaryButton(label: 'CHANTS', onTap: () {}),
                const SizedBox(height: 20),
                PrimaryButton(label: 'NATURE', onTap: () {}),
                const SizedBox(height: 20),
                PrimaryButton(label: 'GUIDED MEDITATION', onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
