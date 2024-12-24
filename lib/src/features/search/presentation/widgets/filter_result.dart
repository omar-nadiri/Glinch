import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';
import 'package:glinch/src/features/search/presentation/widgets/searched_item.dart';

class FilterResult extends ConsumerWidget {
  const FilterResult({
    required this.cocktails,
    super.key,
  });

  final List<Cocktail> cocktails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filter result',
          style: context.englishTextTheme.title.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12.0),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, index) => SearchedItem(cocktail: cocktails[index]),
          separatorBuilder: (_, ind) => const SizedBox(height: 12.0),
          itemCount: cocktails.length,
        ),
      ],
    );
  }
}
