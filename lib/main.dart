import 'package:flutter/material.dart';
import 'widgets/common.dart';
import 'pages/home_page.dart';
import 'pages/yoga_menu_page.dart';
import 'pages/level_page.dart';
import 'pages/meditation_page.dart';
import 'pages/meditation_audio_page.dart';
import 'pages/meditation_poses_page.dart';

void main() => runApp(const FitnessBuddyApp());

class FitnessBuddyApp extends StatelessWidget {
  const FitnessBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Buddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, scaffoldBackgroundColor: kBlack),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/yoga-menu': (_) => const YogaMenuPage(),
        '/level-beginner': (_) => const LevelPage(title: 'BEGINNER', levelKey: 'beginner'),
        '/level-intermediate': (_) => const LevelPage(title: 'INTERMEDIATE', levelKey: 'intermediate'),
        '/level-advanced': (_) => const LevelPage(title: 'ADVANCED', levelKey: 'advanced'),
        '/meditation': (_) => const MeditationPage(),
        '/meditation-audio': (_) => const MeditationAudioPage(),
        '/meditation-poses': (_) => const MeditationPosesPage(),
      },
    );
  }
}
