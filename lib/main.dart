import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:thale_task_app/src/app.dart';

void main() async {
  await dotenv.load();
  runApp(const MoodysApp());
}
