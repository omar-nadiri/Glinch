import 'package:flutter/material.dart';
import 'package:glinch/src/extensions/general.dart';

class CocktailSimpleInfo extends StatelessWidget {
  const CocktailSimpleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return           Container(
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
                'Serving',
                style: context.englishTextTheme.headline6.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                '1',
                style: context.englishTextTheme.subTitle.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Preperation ',
                style: context.englishTextTheme.headline6.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                '5 min',
                style: context.englishTextTheme.subTitle.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Cook ',
                style: context.englishTextTheme.headline6.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                '20 min ',
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
