import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';

class IngredientItem extends StatelessWidget {
  const IngredientItem({
    required this.ingredient,
    required this.measure,
    super.key,
  });

  final String ingredient;
  final String measure;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Card(
        //   elevation: 2,
        // margin: const EdgeInsets.only(right: 10),
        //   child: CustomNetworkImage(
        //     image: 'https://www.thecocktaildb.com/images/ingredients/$ingredient-Small.png',
        //   ),
        // ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Optional: Rounded corners
          ),
          elevation: 4, // Shadow depth
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: context.themeExt.brandColorRed.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.0), // Match the card's border
            ),
            child:  Center(
              child: CustomNetworkImage(
                  image: 'https://www.thecocktaildb.com/images/ingredients/$ingredient-Small.png',
                ),
            ),
          ),
        ),
        const SizedBox(width: 5.0),
        Expanded(
          child: Text(
            ingredient,
            style: context.englishTextTheme.title1.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        Text(
          measure,
          style: context.englishTextTheme.subTitle.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
