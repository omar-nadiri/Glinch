import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:go_router/go_router.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: context.themeExt.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      titleSpacing: 24.0,
      centerTitle: true,
      leadingWidth: 90,
      title: Text(
        'Search',
        style: context.englishTextTheme.title.copyWith(
          color: Colors.black,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      leading: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24.0),
            child: IconButton.filledTonal(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  return context.themeExt.brandColorRed.withOpacity(0.1);
                }),
              ),
              onPressed: () {
                context.pop();
              },
              icon: SizedBox(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  'assets/svg/arrow_back.svg',
                  colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(85 - (!kIsWeb && defaultTargetPlatform == TargetPlatform.android ? 24 : 28));
}
