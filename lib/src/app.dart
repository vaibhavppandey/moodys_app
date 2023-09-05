import 'package:flutter/material.dart';

import 'package:thale_task_app/src/feature/business/presentation/business_page.dart';

class MoodysApp extends StatelessWidget {
  const MoodysApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moodys',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent.shade400),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.redAccent.shade400, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const BusinessesPage(),
    );
  }
}
