import 'package:flutter/material.dart';
import 'package:glinch/src/extensions/general.dart';
import 'dart:math' as math;

import 'package:glinch/src/features/details/presentation/widgets/details_expanded_button.dart';

class DetailsExpanded extends StatefulWidget {
  const DetailsExpanded({
    required this.child,
    required this.title,
    this.color,
    this.shrinkable = true,
    super.key,
  });

  final Widget child;
  final String title;
  final bool shrinkable;
  final Color? color;
  @override
  State<DetailsExpanded> createState() => _DetailsExpandedState();
}

class _DetailsExpandedState extends State<DetailsExpanded> {
  bool _expanded = false;

  @override
  void initState() {
    _expanded = !widget.shrinkable;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: widget.shrinkable ? () {
            _expanded = !_expanded;
            setState(() {});
          } : null,
          child: DetailsExpandedButton(
            color: widget.color,
            expanded: _expanded,
            title: widget.title,
          ),
        ),
        Container(
          color: _expanded ? context.themeExt.whileLite : context.themeExt.white,
          child: Transform.rotate(
            angle: 180 * math.pi / 180,
            child: AnimatedCrossFade(
              firstChild: SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              secondChild: Transform.rotate(
                  angle: -180 * math.pi / 180, child: widget.child),
              crossFadeState: _expanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 200),
            ),
          ),
        ),
      ],
    );
  }
}
