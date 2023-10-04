import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moodys_app/src/feature/business/bloc/business_bloc.dart';
import 'package:moodys_app/src/feature/cart/bloc/cart_bloc.dart';

import 'package:moodys_app/src/feature/business/presentation/business_page.dart';
import 'package:moodys_app/src/feature/cart/presentation/cart_page.dart';

class MoodysApp extends StatelessWidget {
  const MoodysApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BusinessesBloc>(create: (_) => BusinessesBloc()),
        BlocProvider<CartBloc>(create: (_) => CartBloc())
      ],
      child: MaterialApp(
        title: 'Moodys',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.redAccent.shade400),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.redAccent.shade400,
              brightness: Brightness.dark),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const BusinessesPage(),
          '/cart': (_) => const CartPage(),
        },
        // home: const BusinessesPage(),
      ),
    );
  }
}
