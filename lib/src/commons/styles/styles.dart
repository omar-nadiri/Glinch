import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glinch/src/commons/styles/custom_color.dart';
import 'package:glinch/src/commons/styles/english_text_style.dart';

/// A class that provides static methods for generating light and dark
/// [ThemeData] objects.
class AppTheme {
  /// Private constructor to prevent instantiation of this class.
  ///
  /// This class only provides static methods and should not be instantiated.
  AppTheme._();

  /// Returns a light [ThemeData] object configured with the specified
  /// [lightScheme] and custom color extensions.
  ///
  /// The [fontFamily] property is set to 'Poppins'.
  static ThemeData lightTheme(ColorScheme lightScheme, BuildContext context) =>
      ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        colorScheme: lightScheme,
        // extensions: [lightCustomColors, georgianTextStyles, englishTextStyles],
        extensions: [lightCustomColors, englishTextStyles],
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Color.fromRGBO(155, 41, 72, 1),
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        navigationBarTheme: const NavigationBarThemeData().copyWith(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          indicatorColor: const Color.fromRGBO(224, 38, 41, 1),
          labelTextStyle: labelStyle,
        ),
      );

  /// Returns a dark [ThemeData] object configured with the specified
  /// [darkScheme] and custom color extensions.
  ///
  /// The [fontFamily] property is set to 'Poppins'.
  static ThemeData darkTheme(ColorScheme darkScheme, BuildContext context) =>
      ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        colorScheme: darkScheme,
        // extensions: [darkCustomColors, georgianTextStyles, englishTextStyles],
        extensions: [darkCustomColors, englishTextStyles],
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Color.fromRGBO(155, 41, 72, 1),
            // Navigation bar
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        navigationBarTheme: const NavigationBarThemeData().copyWith(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          indicatorColor: const Color.fromRGBO(224, 38, 41, 1),
          labelTextStyle: labelStyle,
        ),
      );

  static WidgetStateTextStyle labelStyle = WidgetStateTextStyle.resolveWith(
        (states) {
      if (states.contains(WidgetState.selected)) {
        return const TextStyle(
          fontFamily: 'roboto',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 14.06 / 12,
          color: Color.fromRGBO(23, 25, 34, 1),
        );
      }
      return const TextStyle(
        fontFamily: 'roboto',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 14.06 / 12,
        color: Color.fromRGBO(86, 87, 91, 1),
      );
    },
  );
}
