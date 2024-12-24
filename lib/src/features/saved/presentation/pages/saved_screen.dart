import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glinch/src/commons/widgets/custom_network_image.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:glinch/src/features/saved/presentation/widgets/saved_recipe_item.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({
    super.key,
  });

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
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
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Recipes you saved',
                style: context.englishTextTheme.headline1.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'egg, leek, tomato, mashroom, green chili',
                style: context.englishTextTheme.title1.copyWith(
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 24.0),
                  children: const [
                    SavedRecipeItem()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
