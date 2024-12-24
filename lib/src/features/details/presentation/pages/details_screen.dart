import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/details/presentation/widgets/cocktail_ingredients_info.dart';
import 'package:glinch/src/features/details/presentation/widgets/cocktail_main_info.dart';
import 'package:glinch/src/features/details/presentation/widgets/cocktail_simple_info.dart';
import 'package:glinch/src/features/details/presentation/widgets/details_app_bar.dart';
import 'package:glinch/src/features/home/domain/repository/coctail_repository.dart';
import 'package:glinch/src/features/home/presentation/provider/cocktail_provider.dart';
import 'package:lottie/lottie.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({
    required this.cocktailId,
    super.key,
  });

  final String cocktailId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ApiResource<CocktailDetails>> cocktailDetails = ref.watch(getCocktailDetails(cocktailId));
    log('${ref.read(getCocktailDetails(cocktailId)).value?.data}');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DetailsAppBar(),
      body: switch (cocktailDetails) {
        AsyncData(:final value) => ListView(
            children: [
              CocktailMainInfo(
                details: value.data!,
              ),
              CocktailSimpleInfo(
                details: value.data!,
              ),
              CocktailIngredientsInfo(
                details: value.data!,
              ),

            ],
          ),
        AsyncError() => const Text('Oops, something unexpected happened'),
        _ => Center(
          child: SizedBox(
              height: 350,
              child: Lottie.asset('assets/animation/wine_loader.json'),
            ),
        ),
      },
    );
  }
}
