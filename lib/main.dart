import 'package:flutter/material.dart';
import 'package:flutter_charts/config/app_routes.dart';
import 'package:flutter_charts/features/auth/presentation/auth_screen.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main() {
  Hive.initFlutter();
  // Hive.registerAdapter<Score>(ScoreAdapter());
  runApp(const SalesManagingApp());
}

class SalesManagingApp extends StatelessWidget {
  const SalesManagingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AuthScreen.authScreenRoute,
      onGenerateRoute: AppRoutes.onGeneratedRoutes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
