import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:glinch/src/extensions/general.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({
    super.key,
  });

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  /// The alignment of the card as it is dragged or being animated.
  ///
  /// While the card is being dragged, this value is set to the values computed
  /// in the GestureDetector onPanUpdate callback. If the animation is running,
  /// this value is set to the value of the [_animation].
  Alignment _dragAlignment = Alignment.center;

  late Animation<Alignment> _animation;

  /// Calculates and runs a [SpringSimulation].
  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );
    // Calculate the velocity relative to the unit interval, [0,1],
    // used by the animation controller.
    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(
      mass: 30,
      stiffness: 1,
      damping: 1,
    );

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    _controller.addListener(() {
      setState(() {
        _dragAlignment = _animation.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0), // here the desired height
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          children: [
            Text(
              'What do you want to make today?',
              style: context.englishTextTheme.headline1.copyWith(
                color: Colors.black,
              ),
            ),
            // Expanded(
            //   child: Container(
            //     child: GestureDetector(
            //       onPanDown: (details) {
            //         _controller.stop();
            //       },
            //       onPanUpdate: (details) {
            //         setState(() {
            //           _dragAlignment += Alignment(
            //             details.delta.dx / (size.width / 2),
            //             details.delta.dy / (size.height / 2),
            //           );
            //         });
            //       },
            //       onPanEnd: (details) {
            //         _runAnimation(details.velocity.pixelsPerSecond, size);
            //       },
            //       child: Align(
            //         alignment: _dragAlignment,
            //         child: Card(
            //           child: Container(
            //             width: MediaQuery.of(context).size.width - 150,
            //             margin: const EdgeInsets.all(10.0),
            //             child: Text(
            //               'What do you want to make today? What do you want to make today What do you want to make today What do you want to make today',
            //               style: context.englishTextTheme.title1.copyWith(
            //                 color: Colors.black,
            //               ),
            //             ),
            //           )
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
