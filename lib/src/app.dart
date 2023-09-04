import 'package:flutter/material.dart';

void main() {
  runApp(const MoodysApp());
}

class MoodysApp extends StatelessWidget {
  const MoodysApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moodys',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Placeholder(),
    );
  }
}
