import 'package:flutter/material.dart';
import '../widgets/common.dart';

class YogaMenuPage extends StatelessWidget {
  const YogaMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppHeader(title: 'YOGA'),
          const SizedBox(height: 24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(label: 'BEGINNER',
                      onTap: () => Navigator.pushNamed(context, '/level-beginner')),
                  const SizedBox(height: 16),
                  PrimaryButton(label: 'INTERMEDIATE',
                      onTap: () => Navigator.pushNamed(context, '/level-intermediate')),
                  const SizedBox(height: 16),
                  PrimaryButton(label: 'ADVANCED',
                      onTap: () => Navigator.pushNamed(context, '/level-advanced')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
