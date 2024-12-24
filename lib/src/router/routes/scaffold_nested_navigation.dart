import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:go_router/go_router.dart';

class ScaffoldNestedNavigation extends StatefulWidget {
  const ScaffoldNestedNavigation({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldNestedNavigation> createState() =>
      _ScaffoldNestedNavigationState();
}

class _ScaffoldNestedNavigationState extends State<ScaffoldNestedNavigation> {
  int currentSelectedIndex = 0;

  void _goBranch(int index) {
    setState(() {
      currentSelectedIndex = index;
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == 0,
      );
    });

  }

  final List<Widget> pages = [
    const Center(child: Text("home")),
    const Center(child: Text("quotes")),
    const Center(child: Text("saved")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBarTheme(
        data:  BottomNavigationBarThemeData(
          backgroundColor: context.themeExt.brandColorRed,
          elevation: 0,
        ),
        child: BottomNavigationBar(
          backgroundColor: context.themeExt.brandColorRed,
          elevation: 0,
          onTap: _goBranch,
          currentIndex: currentSelectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          items: [
            _buildBottomNavItem('assets/svg/home_outlined.svg', 'assets/svg/home_filled.svg', "Home"),
            _buildBottomNavItem('assets/svg/question_mark_outlined.svg', 'assets/svg/question_mark_filled.svg', "quotes"),
            _buildBottomNavItem('assets/svg/save_outlined.svg', 'assets/svg/save_filled.svg', "saved"),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(String icon, String activeIcon, String label) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        height: 30,
        width: 30,
        child: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(Color(0xFFB6B6B6), BlendMode.srcIn),
        ),
      ),
      activeIcon: SizedBox(
        height: 30,
        width: 30,
        child: SvgPicture.asset(
          activeIcon,
          colorFilter:  ColorFilter.mode(context.themeExt.brandColorRed, BlendMode.srcIn),
        ),
      ),
      label: label,
    );
  }
}
