import 'package:e301_moviles/config/router/app_router.dart';
import 'package:e301_moviles/config/theme/app_theme.dart';
import 'package:e301_moviles/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 1).getTheme(),
    );
  }
}
