import 'package:flutter/material.dart';
import 'package:glinch/src/commons/styles/custom_color.dart';
import 'package:glinch/src/commons/styles/english_text_style.dart';

extension SizeExtensions on BuildContext {

  bool get isKeyboardOpen {
    return MediaQuery.of(this).viewInsets.bottom > 50;
  }

  CustomColors get themeExt => Theme.of(this).extension<CustomColors>()!;

  EnglishTextStyles get englishTextTheme => Theme.of(this).extension<EnglishTextStyles>()!;

}


// extension CustomSnackBar on BuildContext {
//   void showCustomSnack({required String text, bool error = false}) {
//     GlobalSnackBar.show(this, text: text, error: error);
//   }
// }

