import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glinch/src/commons/styles/color_scheme.dart';
import 'package:glinch/src/commons/styles/styles.dart';
import 'package:glinch/src/router/app_router.dart';
import 'commons/styles/custom_color.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          ColorScheme lightScheme;
          ColorScheme darkScheme;
          if (lightDynamic != null) {
            lightScheme = lightDynamic.harmonized();
            lightCustomColors = lightCustomColors.harmonized(lightScheme);
          } else {
            lightScheme = lightColorScheme;
          }
          return MaterialApp.router(
            routerConfig: goRouter,
            title: 'Glinch',
            theme: AppTheme.lightTheme(lightScheme, context),
            darkTheme: AppTheme.lightTheme(lightScheme, context),
          );
        },
      ),
    );
  }
}
