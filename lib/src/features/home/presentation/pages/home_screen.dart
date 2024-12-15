import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/commons/widgets/default_icon_button.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(155, 41, 72, 1),
        appBar: AppBar(
          backgroundColor:
              const Color.fromRGBO(155, 41, 72, 1), // App bar color
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Text('Enjoy Making Cocktails?',
                      style: context.englishTextTheme.headline1.copyWith(
                        color: Colors.white,
                      )),
                  const SizedBox(height: 5),
                  Text(
                      'Delicious and detailed your phone Cocktail recipes on your phone',
                      style: context.englishTextTheme.subTitle.copyWith(
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                  height: 350,
                  child: Lottie.asset('assets/animation/wine.json')),
              DefaultIconButton(
                text: 'Sign in to get started',
                onPress: () {},
                icon:   SizedBox(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset('assets/svg/google.svg'),
                ),
              )
            ],
          ),
        ));
  }
}
