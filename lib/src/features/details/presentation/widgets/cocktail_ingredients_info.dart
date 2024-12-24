import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/details/presentation/widgets/details_expanded.dart';
import 'package:glinch/src/features/details/presentation/widgets/ingredient_item.dart';

class CocktailIngredientsInfo extends StatelessWidget {
  const CocktailIngredientsInfo({
    required this.details,
    super.key,
  });

  final CocktailDetails details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients',
                      style: context.englishTextTheme.headline6.copyWith(
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'How many servings?',
                      style: context.englishTextTheme.subTitle.copyWith(
                        color: context.themeExt.brandColorGrey,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: context.themeExt.whileLite2,
                ),
                child: Row(
                  children: [
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.resolveWith((states) {
                          return context.themeExt.brandColorRed
                              .withOpacity(0.1);
                        }),
                      ),
                      onPressed: () {},
                      icon: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          'assets/svg/minus.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      '2',
                      style: context.englishTextTheme.headline6.copyWith(
                        color: context.themeExt.black,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    IconButton.filledTonal(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.resolveWith((states) {
                          return context.themeExt.brandColorRed
                              .withOpacity(0.1);
                        }),
                      ),
                      onPressed: () {},
                      icon: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          'assets/svg/plus.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          ListView.separated(
            padding: const EdgeInsets.only(top: 24.0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: details.ingredients.where((e) => e != null).length,
            separatorBuilder: (ctx, ind) => const SizedBox(height: 10),
            itemBuilder: (ctx, index) => IngredientItem(
              ingredient: details.ingredients[index] ?? '',
              measure: details.measures[index] ?? '',
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
// decoration: BoxDecoration(
// borderRadius: const BorderRadius.only(
// topRight: Radius.circular(40),
// topLeft: Radius.circular(40),
// ),
// color: context.themeExt.brandColorRed.withOpacity(0.8),
// ),
// child: Column(
// children: [
// DetailsExpanded(
// title: 'Ingredients',
// color: Colors.transparent,
// child: Container(
// height: 150,
// padding: const EdgeInsets.symmetric(
// horizontal: 24.0,
// ),
// decoration: BoxDecoration(
// border: const Border(
// top: BorderSide(color: Colors.transparent),
// bottom: BorderSide(color: Colors.transparent, width: 4),
// ),
// color: context.themeExt.brandColorRed.withOpacity(0.8)),
// child: ListView.separated(
// itemCount: details.ingredients.where((e) => e != null).length,
// separatorBuilder: (ctx, ind) => const SizedBox(height: 10),
// itemBuilder: (ctx, index) => IngredientItem(
// ingredient: details.ingredients[index] ?? '',
// measure: details.measures[index] ?? '',
// ),
// ),
// )),
// DetailsExpanded(
// title: 'Directions',
// shrinkable: false,
// color: context.themeExt.brandColorRed,
// child: Container(
// height: MediaQuery.of(context).size.height,
// padding: const EdgeInsets.symmetric(
// horizontal: 24.0,
// ),
// decoration: BoxDecoration(
// border: Border(
// top: BorderSide(color: context.themeExt.brandColorRed),
// ),
// color: context.themeExt.brandColorRed),
// child: Text(
// 'Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressingBeetroot quinola salad orange ginger dressing Beetroot quinola salad orange ginger dressing',
// style: context.englishTextTheme.subTitle.copyWith(
// color: Colors.white,
// ),
// ),
// )),
// ],
// ),
// );
