import 'package:flutter/material.dart';

CustomColors lightCustomColors = const CustomColors(
  black: Color.fromRGBO(0, 0, 0, 1),
  bgBlack: Color.fromRGBO(36, 36, 36, 1),
  white: Color.fromRGBO(255, 255, 255, 1),
  whileLite: Color.fromRGBO(251, 251, 251, 1),
  whileLite2: Color.fromRGBO(247, 247, 247, 1),
  textColorBlack: Color.fromRGBO(23, 25, 34, 1),
  textColorGrey: Color.fromRGBO(86, 87, 91, 1),
  textColorLightGray: Color.fromRGBO(205, 205, 205, 1),
  brandColorBlack: Color.fromRGBO(33, 33, 33, 1),
  brandColorRedShare100: Color.fromRGBO(249, 212, 212, 1),
  brandColorGrayShade100: Color.fromRGBO(230, 231, 231, 1),
  brandColorGrey: Color.fromRGBO(132, 134, 136, 1),
  brandColorRed: Color.fromRGBO(155, 41, 72, 1),
  brandColorWhiteShade100: Color.fromRGBO(230, 230, 230, 1),
  statusColorInfo100: Color.fromRGBO(224, 231, 241, 1),
  statusColorAlertBase: Color.fromRGBO(226, 40, 32, 1),
  statusColorAlertBase50: Color.fromRGBO(252, 233, 233, 1),
  statusColorAlert100: Color.fromRGBO(249, 216, 215, 1),
  statusColorAlert400: Color.fromRGBO(233, 98, 93, 1),
  statusColorSuccessBase: Color.fromRGBO(15, 189, 91, 1),
  statusColorSuccess100: Color.fromRGBO(211, 253, 229, 1),
  statusColorSuccess200: Color.fromRGBO(166, 252, 203, 1),
  statusColorSuccess50: Color.fromRGBO(230, 254, 241, 1),
  strokeColor50: Color.fromRGBO(235, 235, 235, 1),
  strokeColor100: Color.fromRGBO(203, 203, 203, 1),
  dividerColor: Color.fromRGBO(239, 239, 239, 1),
  m3SysLight: Color.fromRGBO(202, 196, 208, 1),
  m3SysLight2: Color.fromRGBO(121, 116, 126, 1),

  informationStatusColorInfoBase: Color.fromRGBO(44, 65, 96, 1),
  informationStatusColorInfo50: Color.fromRGBO(238, 241, 247, 1),
  informationStatusColorInfo100: Color.fromRGBO(224, 231, 241, 1),
  informationStatusColorInfo200: Color.fromRGBO(192, 206, 226, 1),
  informationStatusColorInfo600: Color.fromRGBO(74, 110, 161, 1),
  informationStatusColorInfo700: Color.fromRGBO(59, 89, 129, 1),
);

/// Until design team adds dark colors
CustomColors darkCustomColors = lightCustomColors.copyWith(
  // textColorBlack: const Color.fromRGBO(255, 255, 255, 1),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.black,
    required this.bgBlack,
    required this.white,
    required this.textColorBlack,
    required this.brandColorBlack,
    required this.strokeColor50,
    required this.strokeColor100,
    required this.whileLite,
    required this.whileLite2,
    required this.textColorGrey,
    required this.brandColorGrey,
    required this.brandColorRed,
    required this.brandColorWhiteShade100,
    required this.textColorLightGray,
    required this.dividerColor,
    required this.m3SysLight,
    required this.m3SysLight2,
    required this.statusColorInfo100,
    required this.statusColorAlertBase,
    required this.statusColorAlertBase50,
    required this.statusColorAlert100,
    required this.statusColorAlert400,
    required this.statusColorSuccessBase,
    required this.statusColorSuccess100,
    required this.statusColorSuccess200,
    required this.statusColorSuccess50,
    required this.brandColorRedShare100,
    required this.brandColorGrayShade100,
    required this.informationStatusColorInfoBase,
    required this.informationStatusColorInfo50,
    required this.informationStatusColorInfo100,
    required this.informationStatusColorInfo200,
    required this.informationStatusColorInfo600,
    required this.informationStatusColorInfo700,
  });

  final Color black;
  final Color bgBlack;
  final Color white;
  final Color textColorBlack;
  final Color brandColorBlack;
  final Color strokeColor50;
  final Color strokeColor100;
  final Color whileLite;
  final Color whileLite2;
  final Color textColorGrey;
  final Color brandColorGrey;
  final Color brandColorRed;
  final Color brandColorWhiteShade100;
  final Color textColorLightGray;
  final Color dividerColor;
  final Color m3SysLight;
  final Color m3SysLight2;
  final Color statusColorInfo100;
  final Color statusColorAlertBase;
  final Color statusColorAlertBase50;
  final Color statusColorAlert100;
  final Color statusColorAlert400;
  final Color statusColorSuccessBase;
  final Color statusColorSuccess100;
  final Color statusColorSuccess200;
  final Color statusColorSuccess50;
  final Color brandColorRedShare100;
  final Color brandColorGrayShade100;
  final Color informationStatusColorInfoBase;
  final Color informationStatusColorInfo50;
  final Color informationStatusColorInfo100;
  final Color informationStatusColorInfo200;
  final Color informationStatusColorInfo600;
  final Color informationStatusColorInfo700;

  @override
  CustomColors copyWith({
    Color? black,
    Color? bgBlack,
    Color? white,
    Color? textColorBlack,
    Color? brandColorBlack,
    Color? strokeColor50,
    Color? strokeColor100,
    Color? whileLite,
    Color? whileLite2,
    Color? textColorGrey,
    Color? brandColorGrey,
    Color? brandColorRed,
    Color? brandColorWhiteShade100,
    Color? textColorLightGray,
    Color? dividerColor,
    Color? m3SysLight,
    Color? m3SysLight2,
    Color? statusColorInfo100,
    Color? statusColorAlertBase,
    Color? statusColorAlertBase50,
    Color? statusColorAlert100,
    Color? statusColorAlert400,
    Color? statusColorSuccessBase,
    Color? statusColorSuccess100,
    Color? statusColorSuccess200,
    Color? statusColorSuccess50,
    Color? brandColorRedShare100,
    Color? brandColorGrayShade100,
    Color? informationStatusColorInfoBase,
    Color? informationStatusColorInfo50,
    Color? informationStatusColorInfo100,
    Color? informationStatusColorInfo200,
    Color? informationStatusColorInfo600,
    Color? informationStatusColorInfo700,
  }) {
    return CustomColors(
      black: black ?? this.black,
      bgBlack: bgBlack ?? this.bgBlack,
      white: white ?? this.white,
      textColorBlack: textColorBlack ?? this.textColorBlack,
      brandColorBlack: brandColorBlack ?? this.brandColorBlack,
      strokeColor50: strokeColor50 ?? this.strokeColor50,
      strokeColor100: strokeColor100 ?? this.strokeColor100,
      whileLite: whileLite ?? this.whileLite,
      whileLite2: whileLite2 ?? this.whileLite2,
      textColorGrey: textColorGrey ?? this.textColorGrey,
      brandColorGrey: brandColorGrey ?? this.brandColorGrey,
      brandColorRed: brandColorRed ?? this.brandColorRed,
      brandColorWhiteShade100:
      brandColorWhiteShade100 ?? this.brandColorWhiteShade100,
      textColorLightGray: textColorLightGray ?? this.textColorLightGray,
      dividerColor: dividerColor ?? this.dividerColor,
      m3SysLight: m3SysLight ?? this.m3SysLight,
      m3SysLight2: m3SysLight2 ?? this.m3SysLight2,
      statusColorInfo100: statusColorInfo100 ?? this.statusColorInfo100,
      statusColorAlertBase: statusColorAlertBase ?? this.statusColorAlertBase,
      statusColorAlertBase50:
      statusColorAlertBase50 ?? this.statusColorAlertBase50,
      statusColorAlert100: statusColorAlert100 ?? this.statusColorAlert100,
      statusColorAlert400: statusColorAlert400 ?? this.statusColorAlert400,
      statusColorSuccessBase:
      statusColorSuccessBase ?? this.statusColorSuccessBase,
      statusColorSuccess100: statusColorSuccess100 ?? this.statusColorSuccess100,
      statusColorSuccess200:
      statusColorSuccess200 ?? this.statusColorSuccess200,
      statusColorSuccess50: statusColorSuccess50 ?? this.statusColorSuccess50,
      brandColorRedShare100:
      brandColorRedShare100 ?? this.brandColorRedShare100,
      brandColorGrayShade100:
      brandColorGrayShade100 ?? this.brandColorGrayShade100,
      informationStatusColorInfoBase:
      informationStatusColorInfoBase ?? this.informationStatusColorInfoBase,
      informationStatusColorInfo50:
      informationStatusColorInfo50 ?? this.informationStatusColorInfo50,
      informationStatusColorInfo100:
      informationStatusColorInfo100 ?? this.informationStatusColorInfo100,
      informationStatusColorInfo200:
      informationStatusColorInfo200 ?? this.informationStatusColorInfo200,
      informationStatusColorInfo600:
      informationStatusColorInfo600 ?? this.informationStatusColorInfo600,
      informationStatusColorInfo700:
      informationStatusColorInfo700 ?? this.informationStatusColorInfo700,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      black: Color.lerp(black, other.black, t) ?? black,
      bgBlack: Color.lerp(bgBlack, other.bgBlack, t) ?? bgBlack,
      white: Color.lerp(white, other.white, t) ?? white,
      textColorBlack:
      Color.lerp(textColorBlack, other.textColorBlack, t) ?? textColorBlack,
      brandColorBlack: Color.lerp(brandColorBlack, other.brandColorBlack, t) ??
          brandColorBlack,
      strokeColor50:
      Color.lerp(strokeColor50, other.strokeColor50, t) ?? strokeColor50,
      strokeColor100:
      Color.lerp(strokeColor100, other.strokeColor100, t) ?? strokeColor100,
      whileLite: Color.lerp(whileLite, other.whileLite, t) ?? whileLite,
      whileLite2: Color.lerp(whileLite2, other.whileLite2, t) ?? whileLite2,
      textColorGrey:
      Color.lerp(textColorGrey, other.textColorGrey, t) ?? textColorGrey,
      brandColorGrey:
      Color.lerp(brandColorGrey, other.brandColorGrey, t) ?? brandColorGrey,
      brandColorRed:
      Color.lerp(brandColorRed, other.brandColorRed, t) ?? brandColorRed,
      brandColorWhiteShade100: Color.lerp(
          brandColorWhiteShade100, other.brandColorWhiteShade100, t) ??
          brandColorWhiteShade100,
      textColorLightGray:
      Color.lerp(textColorLightGray, other.textColorLightGray, t) ??
          textColorLightGray,
      dividerColor:
      Color.lerp(dividerColor, other.dividerColor, t) ?? dividerColor,
      m3SysLight: Color.lerp(m3SysLight, other.m3SysLight, t) ?? m3SysLight,
      m3SysLight2: Color.lerp(m3SysLight2, other.m3SysLight2, t) ?? m3SysLight2,
      statusColorInfo100:
      Color.lerp(statusColorInfo100, other.statusColorInfo100, t) ??
          statusColorInfo100,
      statusColorAlertBase:
      Color.lerp(statusColorAlertBase, other.statusColorAlertBase, t) ??
          statusColorAlertBase,
      statusColorAlertBase50:
      Color.lerp(statusColorAlertBase50, other.statusColorAlertBase50, t) ??
          statusColorAlertBase50,
      statusColorAlert100:
      Color.lerp(statusColorAlert100, other.statusColorAlert100, t) ??
          statusColorAlert100,
      statusColorAlert400:
      Color.lerp(statusColorAlert400, other.statusColorAlert400, t) ??
          statusColorAlert400,
      statusColorSuccessBase:
      Color.lerp(statusColorSuccessBase, other.statusColorSuccessBase, t) ??
          statusColorSuccessBase,
      statusColorSuccess100: Color.lerp(
          statusColorSuccess100, other.statusColorSuccess100, t) ??
          statusColorSuccess100,
      statusColorSuccess200:
      Color.lerp(statusColorSuccess200, other.statusColorSuccess200, t) ??
          statusColorSuccess200,
      statusColorSuccess50:
      Color.lerp(statusColorSuccess50, other.statusColorSuccess50, t) ??
          statusColorSuccess50,
      brandColorRedShare100:
      Color.lerp(brandColorRedShare100, other.brandColorRedShare100, t) ??
          brandColorRedShare100,
      brandColorGrayShade100:
      Color.lerp(brandColorGrayShade100, other.brandColorGrayShade100, t) ??
          brandColorGrayShade100,

      informationStatusColorInfoBase:
      Color.lerp(informationStatusColorInfoBase, other.informationStatusColorInfoBase, t) ??
          informationStatusColorInfoBase,
      informationStatusColorInfo50:
      Color.lerp(informationStatusColorInfo50, other.informationStatusColorInfo50, t) ??
          informationStatusColorInfo50,
      informationStatusColorInfo100:
      Color.lerp(informationStatusColorInfo100, other.informationStatusColorInfo100, t) ??
          informationStatusColorInfo100,
      informationStatusColorInfo200:
      Color.lerp(informationStatusColorInfo200, other.informationStatusColorInfo200, t) ??
          informationStatusColorInfo200,
      informationStatusColorInfo600:
      Color.lerp(informationStatusColorInfo600, other.informationStatusColorInfo600, t) ??
          informationStatusColorInfo600,
      informationStatusColorInfo700:
      Color.lerp(informationStatusColorInfo700, other.informationStatusColorInfo700, t) ??
          informationStatusColorInfo700,
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}