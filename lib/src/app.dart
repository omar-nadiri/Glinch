import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:glinch/src/commons/styles/color_scheme.dart';
import 'package:glinch/src/commons/styles/styles.dart';
import 'package:glinch/src/features/home/presentation/pages/home_screen.dart';

import 'commons/styles/custom_color.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;
        // If both light and dark color schemes are available, harmonize them.
        if (lightDynamic != null && darkDynamic != null) {
          lightScheme = lightDynamic.harmonized();
          lightCustomColors = lightCustomColors.harmonized(lightScheme);

          // Repeat for the dark color scheme.
          darkScheme = darkDynamic.harmonized();
          darkCustomColors = darkCustomColors.harmonized(darkScheme);
        } else {
          // Otherwise, use fallback schemes.
          lightScheme = lightColorScheme;
          darkScheme = darkColorScheme;
        }

        return MaterialApp(
          title: 'Glinch',
          theme: AppTheme.lightTheme(lightScheme, context),
          darkTheme: AppTheme.darkTheme(darkScheme, context),
          home: const HomeScreen(),
        );
      },
    );
  }
}
