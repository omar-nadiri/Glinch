import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    required this.index,
    required this.label,
    super.key,
  });

  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        const Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          child: CustomNetworkImage(),
        ),
        Positioned(
          bottom: 50,
          left: 20,
          right: 0,
          child: Text(
            'Salmon with cousocous mmet ',
            style: context.englishTextTheme.headline4.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
