import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glinch/src/commons/constants/filter_types.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';
import 'package:glinch/src/features/home/domain/model/filters.dart';
import 'package:glinch/src/features/home/domain/repository/coctail_repository.dart';
import 'package:glinch/src/features/home/presentation/provider/cocktail_provider.dart';
import 'package:glinch/src/features/search/presentation/widgets/categories_filter.dart';
import 'package:glinch/src/features/search/presentation/widgets/filter_result.dart';
import 'package:glinch/src/features/search/presentation/widgets/ingredient_filter.dart';
import 'package:glinch/src/features/search/presentation/widgets/search_app_bar.dart';
import 'package:lottie/lottie.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ApiResource<List<Filters>>> getCategories = ref.watch(getCategoriesFilters);
    final AsyncValue<ApiResource<List<Filters>>> getIngredients = ref.watch(getIngredientsFilters);
    final AsyncValue<ApiResource<List<Cocktail>>> filterSearch = ref.watch(asyncFilterProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const SearchAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        children: [
          TextField(
            onTapOutside: (_) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            onChanged: (text) {
              ref.read(asyncFilterProvider.notifier).searchCocktail(text);
            },
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Recipe",
              hintStyle: context.englishTextTheme.title1.copyWith(
                color: Colors.grey,
              ),
              prefixIcon: Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: SvgPicture.asset(
                  'assets/svg/search.svg',
                  colorFilter: ColorFilter.mode(
                    context.themeExt.brandColorRed,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.grey, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            ),
          ),
          const SizedBox(height: 12.0),
          switch (getCategories) {
            AsyncData(:final value) => CategoriesFilter(
                categoriesFilter: value.data ?? [],
              ),
            AsyncError() => const Text('Oops, something unexpected happened'),
            _ => Center(
                child: SizedBox(
                  height: 350,
                  child: Lottie.asset('assets/animation/wine_loader.json'),
                ),
              ),
          },
          const SizedBox(height: 24.0),
          switch (getIngredients) {
            AsyncData(:final value) => IngredientFilter(
                categoriesFilter: value.data ?? [],
              ),
            AsyncError() => const Text('Oops, something unexpected happened'),
            _ => Center(
                child: SizedBox(
                  height: 350,
                  child: Lottie.asset('assets/animation/wine_loader.json'),
                ),
              ),
          },
          const SizedBox(height: 24.0),
          // searchByFilter.when(
          //   data: (data) {
          //     return FilterResult(
          //       cocktails: data.data?.map((e) => Cocktail(idDrink: e.idDrink, drinkName: e.drinkName, drinkThumbnail: e.drinkThumbnail)).toList() ?? [],
          //     );
          //   },
          //   error: (error, s) {
          //     return const Text('Oops, something unexpected happened');
          //   },
          //   loading: () {
          //     log('searchByFilter.isLoading');
          //     return Center(
          //       child: SizedBox(
          //         height: 350,
          //         child: Lottie.asset('assets/animation/wine_loader.json'),
          //       ),
          //     );
          //   },
          // ),

          switch (filterSearch) {
            AsyncData(:final valueOrNull) => FilterResult(
              cocktails: valueOrNull?.data?.map((e) => Cocktail(idDrink: e.idDrink, drinkName: e.drinkName, drinkThumbnail: e.drinkThumbnail)).toList() ?? [],
            ),
            AsyncValue(:final error?) => Text('Error: $error'),
            _ => Center(
              child: SizedBox(
                height: 350,
                child: Lottie.asset('assets/animation/wine_loader.json'),
              ),
            ),
          },
        ],
      ),
    );
  }
}
