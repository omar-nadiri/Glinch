import 'package:flutter/material.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';

class CocktailSimpleInfo extends StatelessWidget {
  const CocktailSimpleInfo({
    required this.details,
    super.key,
  });

  final CocktailDetails details;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: const Border(
            top: BorderSide(color: Colors.grey),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Category',
                style: context.englishTextTheme.headline6.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                details.category,
                style: context.englishTextTheme.subTitle.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Type',
                style: context.englishTextTheme.headline6.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                details.alcoholic,
                style: context.englishTextTheme.subTitle.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Glass',
                style: context.englishTextTheme.headline6.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                details.glass,
                style: context.englishTextTheme.subTitle.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
