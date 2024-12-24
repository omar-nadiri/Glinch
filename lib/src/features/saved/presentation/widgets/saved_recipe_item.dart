import 'package:flutter/material.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';

class SavedRecipeItem extends StatelessWidget {
  const SavedRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: context.themeExt.brandColorRed.withOpacity(0.1)
        ),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recipes you saved saved',
                    style: context.englishTextTheme.title.copyWith(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'egg, leek, tomato, mashroom, green chili mashroom, green chili',
                    style: context.englishTextTheme.subTitle.copyWith(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: const SizedBox(
                width: 130,
                height: 130,
                child: CustomNetworkImage(image: "https://www.thecocktaildb.com//images/media/drink/vrwquq1478252802.jpg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
