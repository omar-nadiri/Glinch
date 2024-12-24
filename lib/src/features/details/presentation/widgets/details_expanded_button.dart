import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glinch/src/extensions/general.dart';

class DetailsExpandedButton extends StatelessWidget {
  const DetailsExpandedButton({
    required this.expanded,
    required this.title,
    this.color,
    super.key,
  });

  final bool expanded;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding:  const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: color ?? context.themeExt.brandColorRed.withOpacity(0.5), width: 1),
          ),
          borderRadius: const BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          color: color ?? context.themeExt.brandColorRed.withOpacity(0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.englishTextTheme.headline6.copyWith(
                color: Colors.white,
              ),
            ),
            AnimatedCrossFade(
              secondChild: Container(
                margin: const EdgeInsets.only(right: 8.0),
                padding: const EdgeInsets.symmetric(vertical: 13.5, horizontal: 12.3),
                child: SvgPicture.asset(
                  'assets/svg/arrow_down.svg',
                  width: 13,
                  height: 13,
                  colorFilter: ColorFilter.mode(
                    context.themeExt.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              firstChild: Container(
                margin: const EdgeInsets.only(right: 8.0),
                padding: const EdgeInsets.symmetric(vertical: 13.5, horizontal: 12.3),
                child: SvgPicture.asset(
                  'assets/svg/arrow_up.svg',
                  width: 13,
                  height: 13,
                  colorFilter: ColorFilter.mode(
                    context.themeExt.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              crossFadeState: expanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 200),
            ),
          ],
        ),
      ),
    );
  }
}
