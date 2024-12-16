import 'package:flutter/material.dart';
import 'package:glinch/src/features/details/presentation/widgets/cocktail_ingredients_info.dart';
import 'package:glinch/src/features/details/presentation/widgets/cocktail_main_info.dart';
import 'package:glinch/src/features/details/presentation/widgets/cocktail_simple_info.dart';
import 'package:glinch/src/features/details/presentation/widgets/details_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DetailsAppBar(),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          CocktailMainInfo(),
          CocktailSimpleInfo(),
          CocktailIngredientsInfo(),
        ],
      ),
    );
  }
}
