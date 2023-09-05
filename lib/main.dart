import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:thale_task_app/src/app.dart';
import 'package:thale_task_app/src/feature/business/bloc/business_bloc.dart';

void main() async {
  await dotenv.load();
  runApp(
      BlocProvider(create: (_) => BusinessesBloc(), child: const MoodysApp()));
}
