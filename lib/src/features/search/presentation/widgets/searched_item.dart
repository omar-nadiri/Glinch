import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';

class SearchedItem extends ConsumerWidget {
  const SearchedItem({
    required this.cocktail,
    super.key,
  });

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: context.themeExt.brandColorRed.withOpacity(0.1)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                width: 100,
                height: 100,
                child: CustomNetworkImage(
                  image: cocktail.drinkThumbnail,
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cocktail.drinkName,
                    style: context.englishTextTheme.title.copyWith(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    cocktail.idDrink ?? '',
                    style: context.englishTextTheme.subTitle.copyWith(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20.0),
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                'assets/svg/arrow_right.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
