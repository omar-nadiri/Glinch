import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/details/presentation/widgets/details_expanded.dart';
import 'package:glinch/src/features/details/presentation/widgets/ingredient_item.dart';

class CocktailIngredientsInfo extends StatelessWidget {
  const CocktailIngredientsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        color: context.themeExt.brandColorRed.withOpacity(0.8),
      ),
      child: Column(
        children: [
          DetailsExpanded(
              title: 'Ingredients',
              color: Colors.transparent,
              child: Container(
                height: 150,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(color: Colors.transparent),
                      bottom: BorderSide(color: Colors.transparent, width: 4),
                    ),
                    color: context.themeExt.brandColorRed.withOpacity(0.8)),
                child: ListView(
                  children: const [
                      IngredientItem(),
                  ],
                ),
              )),
          DetailsExpanded(
              title: 'Directions',
              shrinkable: false,
              color: context.themeExt.brandColorRed,
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: context.themeExt.brandColorRed),
                    ),
                    color: context.themeExt.brandColorRed),
                child: Text(
                  'Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressingBeetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing',
                  style: context.englishTextTheme.subTitle.copyWith(
                    color: Colors.white,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
