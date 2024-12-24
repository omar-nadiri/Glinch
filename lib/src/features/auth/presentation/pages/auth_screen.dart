import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glinch/src/commons/widgets/default_icon_button.dart';
import 'package:glinch/src/extensions/general.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    super.key,
  });

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential).then((_) {
      if (mounted) {
        context.go('/home');
      }
    });
  }

  Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.themeExt.brandColorRed,
        appBar: AppBar(
          backgroundColor: context.themeExt.brandColorRed, // App bar color
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
                onPress: () async {
                  signInWithGoogle();
                },
                icon: SizedBox(
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
