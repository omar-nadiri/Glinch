import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glinch/src/extensions/general.dart';

class DefaultIconButton extends StatelessWidget {
  const DefaultIconButton({
    required this.text,
    required this.onPress,
    this.textColor,
    this.backgroundColor,
    this.borderRadius,
    this.notifier,
    this.padding,
    this.icon,
    super.key,
  });

  final VoidCallback onPress;
  final String text;
  final ValueNotifier<bool>? notifier;
  final double? borderRadius;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notifier ?? ValueNotifier(true),
      builder: (BuildContext context, value, Widget? _) {
        return IconButton(
          focusNode: FocusNode(skipTraversal: true),
          onPressed: value
              ? onPress
              : () {
                  HapticFeedback.mediumImpact();
                },
          style: TextButton.styleFrom(
              foregroundColor:
                  value ? context.themeExt.white : context.themeExt.m3SysLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 50),
              ),
              backgroundColor: backgroundColor ??
                  (value
                      ? backgroundColor ?? context.themeExt.white
                      : context.themeExt.brandColorWhiteShade100),
              padding: padding ??
                  const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 16.0,
                  ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          icon: RichText(
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            text: TextSpan(
              style: context.englishTextTheme.buttonLg.copyWith(
                color: value
                    ? textColor ?? context.themeExt.black
                    : context.themeExt.brandColorBlack.withOpacity(0.38),
              ),
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: icon ?? const SizedBox.shrink(),
                  ),
                ),
                TextSpan(
                  text: text,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
