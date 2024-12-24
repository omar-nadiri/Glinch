import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';
import 'package:glinch/src/features/home/domain/repository/coctail_repository.dart';
import 'package:glinch/src/features/home/presentation/provider/cocktail_provider.dart';
import 'package:glinch/src/features/home/presentation/widgets/carousel_item.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<ApiResource<List<Cocktail>>> cocktails = ref.watch(homeCocktails);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0), // here the desired height
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: RefreshIndicator(
        onRefresh:() => ref.refresh(homeCocktails.future),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          children: [
            Text(
              'What do you want to make today?',
              style: context.englishTextTheme.headline1.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              readOnly: true,
              onTap: () {
                context.pushNamed('cocktail_search');
              },
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
            const SizedBox(height: 24),
            Text(
              'Popular cocktail recipes',
              style: context.englishTextTheme.title.copyWith(
                color: Colors.black,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 24),
            switch (cocktails) {
              AsyncValue<ApiResource<List<Cocktail>>>(:final value?) => ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 450),
                  child: CarouselView(
                    onTap: (index) {
                      context.pushNamed('cocktail_details', queryParameters: {'cocktailId': value.data![index].idDrink});
                    },
                    itemSnapping: true,
                    itemExtent: 230,
                    shrinkExtent: 200,
                    children: (value.data ?? []).map((e) => CarouselItem(
                              cocktail: e,
                            ))
                        .toList(),
                  ),
                ),
              AsyncValue(:final error?) => const Text('Oops, something unexpected happened'),
              _ => SizedBox(
                  height: 350,
                  child: Lottie.asset('assets/animation/wine_loader.json'),
                ),
            },
          ],
        ),
      ),
    );
  }
}
