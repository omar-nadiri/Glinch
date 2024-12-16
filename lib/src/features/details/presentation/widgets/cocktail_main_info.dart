import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';

class CocktailMainInfo extends StatelessWidget {
  const CocktailMainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return           Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Beetroot quinola salad orange ginger dressing',
            style: context.englishTextTheme.headline4.copyWith(
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 24.0),
            height: 200,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const CustomNetworkImage(),
            ),
          ),
          Text(
            'Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing',
            style: context.englishTextTheme.title1.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
