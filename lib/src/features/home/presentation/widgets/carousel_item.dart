import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    required this.cocktail,
    super.key,
  });

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: CustomNetworkImage(
            image: cocktail.drinkThumbnail,
          ),
        ),
        Positioned(
          bottom: 50,
          left: 20,
          right: 0,
          child: Text(
            cocktail.drinkName,
            style: context.englishTextTheme.headline4.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
