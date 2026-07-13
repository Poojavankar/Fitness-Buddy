import 'package:flutter/material.dart';
import '../widgets/common.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppHeader(title: 'FITNESS BUDDY'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FilledButton(
                onPressed: () {}, // "BEGIN" (optional)
                child: const Text('BEGIN'),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: _bigCard(context, 'YOGA', onTap: () {
                          Navigator.pushNamed(context, '/yoga-menu');
                        })),
                        const SizedBox(width: 12),
                        Expanded(child: _bigCard(context, 'MEDITATION', onTap: () {
                          Navigator.pushNamed(context, '/meditation');
                        })),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bigCard(BuildContext context, String title, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: kBrown,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(title,
              style: const TextStyle(
                color: kBeige,
                fontSize: 26,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.2,
              )),
        ),
      ),
    );
  }
}
