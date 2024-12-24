import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/home/domain/model/filters.dart';
import 'package:glinch/src/features/home/presentation/provider/cocktail_provider.dart';

// class CategoriesFilter extends StatefulWidget {
//   const CategoriesFilter({
//     required this.categoriesFilter,
//     super.key,
//   });
//
//   final List<Filters> categoriesFilter;
//
//   @override
//   State<CategoriesFilter> createState() => _CategoriesFilterState();
// }
//
// class _CategoriesFilterState extends State<CategoriesFilter> {
//   String? _selectedValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Wrap(
//         direction: Axis.horizontal,
//         spacing: 5.0,
//         children: widget.categoriesFilter.map((e) => ChoiceChip(
//           showCheckmark: false,
//           selectedColor: context.themeExt.brandColorRed,
//           disabledColor: context.themeExt.white,
//           label: Text(
//             '${e.strCategory}',
//             style: context.englishTextTheme.subTitle.copyWith(
//                 color: _selectedValue == e.strCategory
//                     ? context.themeExt.white
//                     : context.themeExt.black),
//           ),
//           selected: _selectedValue == e.strCategory,
//           onSelected: (bool selected) {
//             setState(() {
//               _selectedValue = selected ? e.strCategory : null;
//             });
//           },
//         )).toList(),
//       ),
//     );
//   }
// }

class CategoriesFilter extends ConsumerWidget {
  const CategoriesFilter({
    required this.categoriesFilter,
    super.key,
  });

  final List<Filters> categoriesFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoriesFilter);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 5.0,
        children: categoriesFilter
            .map((e) => ChoiceChip(
                  showCheckmark: false,
                  selectedColor: context.themeExt.brandColorRed,
                  disabledColor: context.themeExt.white,
                  label: Text(
                    '${e.strCategory}',
                    style: context.englishTextTheme.subTitle.copyWith(
                        color: selectedCategory == e.strCategory
                            ? context.themeExt.white
                            : context.themeExt.black),
                  ),
                  selected: selectedCategory == e.strCategory,
                  onSelected: (bool selected) {
                    ref.read(selectedCategoriesFilter.notifier).state = selected ? e.strCategory : null;
                  },
                ))
            .toList(),
      ),
    );
  }
}
