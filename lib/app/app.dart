import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/core/routes/route_config.dart';

import 'core/themes/font_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Coolvetica',
        fontFamilyFallback: const <String>[
          'Noto Sans',
          'Roboto',
          'Arial',
          'sans-serif',
        ],
        textTheme: FontTheme.lightThemeData,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}
