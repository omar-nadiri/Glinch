import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

EnglishTextStyles englishTextStyles = EnglishTextStyles(
  headline1: GoogleFonts.montserrat(
    fontSize: 40,
    height: 48.41 / 40,
    fontWeight: FontWeight.w700,
  ),
  headline2: GoogleFonts.montserrat(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 43.57 / 36,
  ),
  headline3: GoogleFonts.montserrat(
    fontSize: 32,
    height: 38.73 / 32,
    fontWeight: FontWeight.w700,
  ),
  headline4: GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 29.05 / 24,
  ),
  headline5: GoogleFonts.montserrat(
    fontSize: 20,
    height: 24.2 / 20,
    fontWeight: FontWeight.w700,
  ),
  headline6: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 19.36 / 16,
  ),
  title: GoogleFonts.montserrat(
    fontSize: 18,
    height: 21.76 / 18,
    fontWeight: FontWeight.w700,
  ),
  title1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 19.36 / 16,
  ),
  subTitle: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 16.41 / 14,
  ),
  body: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 21.76 / 16,
  ),
  body1: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 16.41 / 14,
  ),
  body2: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 14.06 / 12,
  ),
  number: GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 23.44 / 20,
  ),
  number1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 18.75 / 16,
  ),
  number2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 16.41 / 14,
  ),
  buttonLg: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 18.75 / 16,
  ),
  buttonMd: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 16.41 / 14,
  ),
  buttonSmall: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 14.06 / 12,
  ),
  textButtonUnderline: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 14.06 / 12,
    decoration: TextDecoration.underline,
  ),
  textButton: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 14.06 / 12,
  ),
  overLine: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 16.41 / 14,
  ),
  overLine1: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 14.06 / 12,
  ),
  smallText: GoogleFonts.montserrat(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 11.72 / 10,
  ),
  extraSmallText: GoogleFonts.montserrat(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    height: 9.38 / 8,
  ),
);

@immutable
class EnglishTextStyles extends ThemeExtension<EnglishTextStyles> {
  const EnglishTextStyles({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
    required this.headline5,
    required this.headline6,
    required this.title,
    required this.title1,
    required this.subTitle,
    required this.body,
    required this.body1,
    required this.body2,
    required this.number,
    required this.number1,
    required this.number2,
    required this.buttonLg,
    required this.buttonMd,
    required this.buttonSmall,
    required this.textButtonUnderline,
    required this.textButton,
    required this.overLine,
    required this.overLine1,
    required this.smallText,
    required this.extraSmallText,
  });

  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;
  final TextStyle headline5;
  final TextStyle headline6;
  final TextStyle title;
  final TextStyle title1;
  final TextStyle subTitle;
  final TextStyle body;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle number;
  final TextStyle number1;
  final TextStyle number2;
  final TextStyle buttonLg;
  final TextStyle buttonMd;
  final TextStyle buttonSmall;
  final TextStyle textButtonUnderline;
  final TextStyle textButton;
  final TextStyle overLine;
  final TextStyle overLine1;
  final TextStyle smallText;
  final TextStyle extraSmallText;

  @override
  EnglishTextStyles copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? headline4,
    TextStyle? headline5,
    TextStyle? headline6,
    TextStyle? title,
    TextStyle? title1,
    TextStyle? subTitle,
    TextStyle? body,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? number,
    TextStyle? number1,
    TextStyle? number2,
    TextStyle? buttonLg,
    TextStyle? buttonMd,
    TextStyle? buttonSmall,
    TextStyle? textButtonUnderline,
    TextStyle? textButton,
    TextStyle? overLine,
    TextStyle? overLine1,
    TextStyle? smallText,
    TextStyle? extraSmallText,
  }) {
    return EnglishTextStyles(
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      headline4: headline4 ?? this.headline4,
      headline5: headline5 ?? this.headline5,
      headline6: headline6 ?? this.headline6,
      title: title ?? this.title,
      title1: title1 ?? this.title1,
      subTitle: subTitle ?? this.subTitle,
      body: body ?? this.body,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      number: number ?? this.number,
      number1: number1 ?? this.number1,
      number2: number2 ?? this.number2,
      buttonLg: buttonLg ?? this.buttonLg,
      buttonMd: buttonMd ?? this.buttonMd,
      buttonSmall: buttonSmall ?? this.buttonSmall,
      textButtonUnderline: textButtonUnderline ?? this.textButtonUnderline,
      textButton: textButton ?? this.textButton,
      overLine: overLine ?? this.overLine,
      overLine1: overLine1 ?? this.overLine1,
      smallText: smallText ?? this.smallText,
      extraSmallText: extraSmallText ?? this.extraSmallText,
    );
  }

  @override
  EnglishTextStyles lerp(ThemeExtension<EnglishTextStyles>? other, double t) {
    if (other is! EnglishTextStyles) {
      return this;
    }
    return EnglishTextStyles(
      headline1: TextStyle.lerp(headline1, other.headline1, t) ?? headline1,
      headline2: TextStyle.lerp(headline2, other.headline2, t) ?? headline2,
      headline3: TextStyle.lerp(headline3, other.headline3, t) ?? headline3,
      headline4: TextStyle.lerp(headline4, other.headline4, t) ?? headline4,
      headline5: TextStyle.lerp(headline5, other.headline5, t) ?? headline5,
      headline6: TextStyle.lerp(headline6, other.headline6, t) ?? headline6,
      title: TextStyle.lerp(title, other.title, t) ?? title,
      title1: TextStyle.lerp(title1, other.title1, t) ?? title1,
      subTitle: TextStyle.lerp(subTitle, other.subTitle, t) ?? subTitle,
      body: TextStyle.lerp(body, other.body, t) ?? body,
      body1: TextStyle.lerp(body1, other.body1, t) ?? body1,
      body2: TextStyle.lerp(body2, other.body2, t) ?? body2,
      number: TextStyle.lerp(number, other.number, t) ?? number,
      number1: TextStyle.lerp(number1, other.number1, t) ?? number1,
      number2: TextStyle.lerp(number2, other.number2, t) ?? number2,
      buttonLg: TextStyle.lerp(buttonLg, other.buttonLg, t) ?? buttonLg,
      buttonMd: TextStyle.lerp(buttonMd, other.buttonMd, t) ?? buttonMd,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t) ?? buttonSmall,
      textButtonUnderline: TextStyle.lerp(textButtonUnderline, other.textButtonUnderline, t) ?? textButtonUnderline,
      textButton: TextStyle.lerp(textButton, other.textButton, t) ?? textButton,
      overLine: TextStyle.lerp(overLine, other.overLine, t) ?? overLine,
      overLine1: TextStyle.lerp(overLine1, other.overLine1, t) ?? overLine1,
      smallText: TextStyle.lerp(smallText, other.smallText, t) ?? smallText,
      extraSmallText: TextStyle.lerp(extraSmallText, other.extraSmallText, t) ?? extraSmallText,
    );
  }

  EnglishTextStyles harmonized(TextStyle dynamic) {
    return copyWith(
      headline1: headline1.copyWith(),
      headline2: headline2.copyWith(),
      headline3: headline3.copyWith(),
      headline4: headline4.copyWith(),
      headline5: headline5.copyWith(),
      headline6: headline6.copyWith(),
      title: title.copyWith(),
      title1: title1.copyWith(),
      subTitle: subTitle.copyWith(),
      body: body.copyWith(),
      body1: body1.copyWith(),
      body2: body2.copyWith(),
      number: number.copyWith(),
      number1: number1.copyWith(),
      number2: number2.copyWith(),
      buttonLg: buttonLg.copyWith(),
      buttonMd: buttonMd.copyWith(),
      buttonSmall: buttonSmall.copyWith(),
      textButtonUnderline: textButtonUnderline.copyWith(),
      textButton: textButton.copyWith(),
      overLine: overLine.copyWith(),
      overLine1: overLine1.copyWith(),
      smallText: smallText.copyWith(),
      extraSmallText: extraSmallText.copyWith(),
    );
  }
}