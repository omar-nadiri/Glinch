import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';

class IngredientItem extends StatelessWidget {
  const IngredientItem({super.key});

  @override
  Widget build(BuildContext context) {
    return         Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
          ),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(right: 10),
          child: const CustomNetworkImage(),
        ),
        Expanded(
          child: Text(
            'awdawdawdawd',
            style: context.englishTextTheme.title1.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        Text(
          'title,',
          style: context.englishTextTheme.subTitle.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
