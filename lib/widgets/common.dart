import 'package:flutter/material.dart';

const kBlack = Colors.black;
const kBeige = Color(0xFFF5DEC0);  // light beige like your mock
const kBrown = Color(0xFF9C4A2F);  // brown buttons

class AppHeader extends StatelessWidget {
  final String title;          // e.g., "FITNESS BUDDY"
  final bool showSettings;     // show gear on right
  const AppHeader({super.key, required this.title, this.showSettings = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2)),
          if (showSettings)
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            )
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const PrimaryButton({super.key, required this.label, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kBrown,
          foregroundColor: kBeige,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        onPressed: onTap,
        child: Text(label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
