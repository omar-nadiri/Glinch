import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glinch/src/commons/constants/filter_types.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/home/domain/model/filters.dart';
import 'package:glinch/src/features/home/presentation/provider/cocktail_provider.dart';

class IngredientFilter extends ConsumerWidget {
  const IngredientFilter({
    required this.categoriesFilter,
    super.key,
  });

  final List<Filters> categoriesFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIngredient = ref.watch(selectedIngredientFilter);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular ingredients',
          style: context.englishTextTheme.title.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 15.0,
            children: categoriesFilter
                .map(
                  (e) => SizedBox(
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: (){
                            final selected = e.strIngredient1 == selectedIngredient;
                            ref.read(selectedIngredientFilter.notifier).state = !selected ? e.strIngredient1 : null;
                            ref.read(asyncFilterProvider.notifier).fetchFilteredCocktail(FilterTypes.ingredients, e.strIngredient1 ?? '');

                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: context.themeExt.brandColorRed.withOpacity(selectedIngredient == e.strIngredient1 ? 1 : 0.1),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: CustomNetworkImage(
                                image: "https://www.thecocktaildb.com/images/ingredients/${e.strIngredient1}-Small.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${e.strIngredient1}',
                          style: context.englishTextTheme.overLine.copyWith(
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
